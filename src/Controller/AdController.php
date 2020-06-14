<?php

namespace App\Controller;

use App\Entity\Ad;
use App\Form\AdType;
use App\Entity\Image;
use App\Repository\AdRepository;
use DateTime;
use DateTimeZone;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdController extends AbstractController
{
    /**
     * @Route("/ads", name="ads_index")
     */
    public function index(AdRepository $adRepo)
    {
        $ads = $adRepo->findAll();

        return $this->render('ad/index.html.twig', [
            'ads' => $ads
        ]);
    }

    /**
     * Créer une annonce
     * @Route("/ads/create",name="ads_create")
     * @IsGranted("ROLE_USER")
     * @return response
     */
    public function create(Request $request, EntityManagerInterface $manager)
    {
        $ad = new Ad();
        $form = $this->createForm(AdType::class, $ad);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            foreach ($ad->getImages() as $image) {
                $image->setAd($ad);
                $manager->persist($image);
            }
            $ad->setAuthor($this->getUser());
            $manager->persist($ad);
            $manager->flush();
            $this->addFlash('success', 'L\'annonce a été ajoutée');
            return $this->redirectToRoute('ads_show', ['slug' => $ad->getSlug()]);
        }
        return $this->render('ad/create.html.twig', ['form' => $form->createView()]);
    }

    /**
     * Mettre à jour une annonce
     * @Route("/ads/{slug}/update",name="ads_update")
     * @Security("is_granted('ROLE_USER') and user === ad.getAuthor()", message="Vous devez être l'auteur de l'annonce pour pouvoir la modifier.")
     * @return response
     */
    public function update(Request $request, EntityManagerInterface $manager, Ad $ad)
    {
        $form = $this->createForm(AdType::class, $ad);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            foreach ($ad->getImages() as $image) {
                $image->setAd($ad);
                $manager->persist($image);
            }
            $ad->setCreatedAt(new DateTime('now', new DateTimeZone('Europe/Paris')));
            $manager->persist($ad);
            $manager->flush();
            $this->addFlash('success', 'L\'annonce a été mise à jour');
            return $this->redirectToRoute('ads_show', ['slug' => $ad->getSlug()]);
        }
        return $this->render('ad/update.html.twig', ['form' => $form->createView()]);
    }

    /**
     * Supprimer une annonce
     * @Route("/ads/{slug}/delete",name="ads_delete")
     * @Security("is_granted('ROLE_USER') and user === ad.getAuthor()", message="Vous devez être l'auteur de l'annonce pour pouvoir la supprimer.")
     * @return response
     */
    public function delete(EntityManagerInterface $manager, Ad $ad)
    {
        $manager->remove($ad);
        $manager->flush();
        $this->addFlash('success', "L'annonce {$ad->getTitle()} a bien été supprimée.");
        return $this->redirectToRoute('ads_index');
    }

    /**
     * Affiche une seule annonce
     * @Route("/ads/{slug}",name="ads_show")
     * @return Response
     */
    public function show(Ad $ad)
    {
        return $this->render('ad/show.html.twig', ['ad' => $ad]);
    }
}
