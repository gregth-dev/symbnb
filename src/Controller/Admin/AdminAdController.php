<?php

namespace App\Controller\Admin;

use App\Entity\Ad;
use App\Form\AdType;
use App\Service\Pagination;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminAdController extends AbstractController
{
    /**
     * On précise dans la route que l'on souhaite un digit, que c'est optionnel et que sa valeur par défaut est 1
     * digit car on veut un chiffre, optionnel car /admin/ads peut etre appelé et 1 car sinon il met page=0 si on fait /admin/ads
     * @Route("/admin/ads/{page<\d+>?1}", name="admin_ad_index")
     */
    public function index(Pagination $pagination, $page)
    {
        $pagination
            ->setEntityClass(Ad::class)
            ->setCurrentPage($page);

        return $this->render('admin/ad/index.html.twig', [
            'pagination' => $pagination
        ]);
    }


    /**
     * Permet de modifier une annonce
     * @Route("/admin/ads/{id}/edit",name="admin_ad_edit")
     * @param Ad $ad
     * @return Response
     */
    public function edit(Ad $ad, Request $request, EntityManagerInterface $manager)
    {
        //dd($request);
        $form = $this->createForm(AdType::class, $ad);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $manager->persist($ad);
            $manager->flush();
            $this->addFlash('success', "L'annonce a bien été modifiée.");
        }
        return $this->render('admin/ad/edit.html.twig', ['ad' => $ad, 'form' => $form->createView()]);
    }

    /**
     * Permet de supprimer une annonce
     * @Route("/admin/ads/{id}/delete",name="admin_ad_delete")
     * @param Ad $ad
     * @param EntityManagerInterface $manager
     * @return Response
     */
    public function delete(Ad $ad, EntityManagerInterface $manager)
    {
        if (count($ad->getBookings())) {
            $this->addFlash('danger', "L'annonce {$ad->getTitle()} a des réservations, vous ne pouvez la supprimer.");
        } else {
            $manager->remove($ad);
            $manager->flush();
            $this->addFlash('success', "L'annonce {$ad->getTitle()} a bien été supprimée.");
        }
        return $this->redirectToRoute('admin_ad_index');
    }
}
