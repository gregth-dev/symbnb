<?php

namespace App\Controller\Admin;

use App\Entity\Booking;
use App\Form\AdminBookingType;
use App\Service\Pagination;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminBookingController extends AbstractController
{
    /**
     * @Route("/admin/bookings/{page<\d+>?1}", name="admin_booking_index")
     */
    public function index(Pagination $pagination, $page)
    {
        $pagination
            ->setEntityClass(Booking::class)
            ->setCurrentPage($page);

        return $this->render('admin/booking/index.html.twig', [
            'pagination' => $pagination
        ]);
    }


    /**
     * Permet de modifier une annonce
     * @Route("/admin/bookings/{id}/edit",name="admin_booking_edit")
     * @param Booking $booking
     * @return Response
     */
    public function edit(Booking $booking, Request $request, EntityManagerInterface $manager)
    {
        $form = $this->createForm(AdminBookingType::class, $booking);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $booking->setAmount(0);
            $manager->persist($booking);
            $manager->flush();
            $this->addFlash('success', "La réservation a bien été modifiée.");
            return $this->redirectToRoute('admin_booking_index');
        }
        return $this->render('admin/booking/edit.html.twig', ['booking' => $booking, 'form' => $form->createView()]);
    }

    /**
     * Permet de supprimer une annonce
     * @Route("/admin/bookings/{id}/delete",name="admin_booking_delete")
     * @param Booking $booking
     * @param EntityManagerInterface $manager
     * @return Response
     */
    public function delete(Booking $booking, EntityManagerInterface $manager)
    {
        $id = $booking->getId();
        $manager->remove($booking);
        $manager->flush();
        $this->addFlash('success', "La réservation N°{$id} a bien été supprimée.");

        return $this->redirectToRoute('admin_booking_index');
    }
}
