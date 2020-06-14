<?php

namespace App\Controller;

use App\Entity\User;
use App\Form\AccountType;
use App\Entity\PasswordUpdate;
use App\Form\RegistrationType;
use App\Form\PasswordUpdateType;
use Symfony\Component\Form\FormError;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\IsGranted;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Security\Http\Authentication\AuthenticationUtils;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AccountController extends AbstractController
{
    /**
     * Permet de se connecter et gère la connexion
     * @Route("/login", name="account_login", methods={"GET","POST"})
     * @return Response
     */
    public function login(AuthenticationUtils $utils)
    {
        $error = $utils->getLastAuthenticationError();
        // last username entered by the user
        $lastUsername = $utils->getLastUsername();

        return $this->render('account/login.html.twig', [
            'last_username' => $lastUsername,
            'error'         => $error,
        ]);
    }


    /**
     * Permet de se déconnecter
     * @Route("/logout",name="account_logout")
     * @return void
     */
    public function logout()
    {
    }

    /**
     * Permet d'afficher le formulaire de connexion
     * @Route("/register",name="account_register", methods={"GET","POST"})
     * @return Response
     */
    public function register(Request $request, EntityManagerInterface $manager, UserPasswordEncoderInterface $encoder)
    {

        $user = new User();
        $form = $this->createForm(RegistrationType::class, $user);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $hash = $encoder->encodePassword($user, $user->getHash());
            $user->setHash($hash);
            $manager->persist($user);
            $manager->flush();
            $this->addFlash('success', 'Votre compte a bien été créé');
            return $this->redirectToRoute('account_login');
        }
        return $this->render('account/registration.html.twig', ['form' => $form->createView()]);
    }

    /**
     * Permet d'afficher et de modifier le profil utilisateur
     * @Route("/profile",name="account_profile", methods={"GET","POST"})
     * @IsGranted("ROLE_USER")
     * @return Response
     */
    public function profile(Request $request, EntityManagerInterface $manager)
    {
        $user = $this->getUser();
        $form = $this->createForm(AccountType::class, $user);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $manager->persist($user);
            $manager->flush();
            $this->addFlash('success', 'Votre compte a bien été mis à jour');
            return $this->redirectToRoute('account_profile');
        }
        return $this->render('account/profile.html.twig', ['form' => $form->createView()]);
    }

    /**
     * Permet de modifier le mot de passe
     * @Route("/password-update",name="account_password")
     * @IsGranted("ROLE_USER")
     * @return Response
     */
    public function updatePassword(Request $request, EntityManagerInterface $manager, UserPasswordEncoderInterface $encoder)
    {
        $passwordupdate = new PasswordUpdate();
        $user = $this->getUser();
        $form = $this->createForm(PasswordUpdateType::class, $passwordupdate);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            if (!password_verify($passwordupdate->getOldPassword(), $user->getHash())) {
                $form->get('oldPassword')->addError(new FormError("L'ancien mot de passe est incorrect"));
            } else {
                $user->setHash($encoder->encodePassword($user, $passwordupdate->getNewPassword()));
                $manager->persist($user);
                $manager->flush();
                $this->addFlash('success', 'Votre mot de passe a bien été mis à jour');
                return $this->redirectToRoute('homepage');
            }
        }
        return $this->render('account/password.html.twig', ['form' => $form->createView()]);
    }

    /**
     * Permet d'afficher le profil de l'utilisateur connecté
     * @Route("/account",name="account_myAccount")
     * @IsGranted("ROLE_USER")
     * @return Response
     */
    public function myAccount()
    {
        return $this->render('user/show.html.twig', ['user' => $this->getUser()]);
    }

    /**
     * Affiche la liste des réservations faites par l'utilisateur
     * @Route("/account/bookings",name="account_bookings")
     * @IsGranted("ROLE_USER")
     * @return Response
     */
    public function bookings()
    {
        return $this->render('account/bookings.html.twig');
    }
}
