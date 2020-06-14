<?php

namespace App\Controller\Admin;

use App\Entity\User;
use App\Service\Pagination;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminUserController extends AbstractController
{
    /**
     * @Route("/admin/users/{page<\d+>?1}", name="admin_user_index")
     */
    public function index(Pagination $pagination, $page)
    {
        $pagination
            ->setEntityClass(User::class)
            ->setCurrentPage($page);

        return $this->render('admin/user/index.html.twig', [
            'pagination' => $pagination
        ]);
    }

    /**
     * Permet de supprimer une annonce
     * @Route("/admin/users/{id}/delete",name="admin_user_delete")
     * @param User $user
     * @param EntityManagerInterface $manager
     * @return Response
     */
    public function delete(User $user, EntityManagerInterface $manager)
    {
        if (count($user->getBookings())) {
            foreach ($user->getBookings() as $booking) {
                // On test si les réservations de l'utilisateur sont passées ou non.
                if ($booking->getEndDate() > (new \DateTime('now', new \DateTimeZone('Europe/Paris'))))
                    $this->addFlash('danger', "L'utilisateur {$user->getFullName()} est lié a des réservations, vous ne pouvez le supprimer.");
            }
        }
        if (count($user->getAds())) {
            $this->addFlash('danger', "L'utilisateur {$user->getFullName()} est lié a des annonces, vous ne pouvez le supprimer.");
        } else {
            $id = $user->getId();
            $manager->remove($user);
            $manager->flush();
            $this->addFlash('success', "L'utilisateur N°{$id} a bien été supprimée.");
        }
        return $this->redirectToRoute('admin_user_index');
    }
}
