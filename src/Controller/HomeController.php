<?php


namespace App\Controller;

use App\Repository\AdRepository;
use App\Repository\UserRepository;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class HomeController extends AbstractController
{
    /**
     * Affiche la page d'accueil
     * @Route("/",name="homepage")
     * @return void
     */
    public function home(AdRepository $adRepository, UserRepository $userRepository)
    {
        return $this->render('home.html.twig', [
            'bestAds' => $adRepository->findBestAds(),
            'bestUsers' => $userRepository->findBestUsers()
        ]);
    }
}
