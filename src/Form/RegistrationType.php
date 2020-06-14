<?php

namespace App\Form;

use App\Entity\User;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\EmailType;
use Symfony\Component\Form\Extension\Core\Type\PasswordType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\Extension\Core\Type\UrlType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class RegistrationType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('firstName', TextType::class, [
                'label' => "Prénom",
                'attr' => [
                    'placeholder' => "Votre prénom..."
                ]
            ])
            ->add('lastName', TextType::class, [
                'label' => "Nom",
                'attr' => [
                    'placeholder' => "Votre nom..."
                ]
            ])
            ->add('email', EmailType::class, [
                'label' => "Email",
                'attr' => [
                    'placeholder' => "Votre adresse email..."
                ]
            ])
            ->add('picture', UrlType::class, [
                'label' => "URL d'une photo de profil",
                'attr' => [
                    'placeholder' => "URL de votre avatar...",
                    'required' => false
                ]
            ])
            ->add('hash', PasswordType::class, [
                'label' => "Mot de passe",
                'attr' => [
                    'placeholder' => "Votre mot de passe..."
                ]
            ])
            ->add('passwordConfirm', PasswordType::class, [
                'label' => "Confirmer le mot de passe",
                'attr' => [
                    'placeholder' => "Confirmation du mot de passe..."
                ]
            ])
            ->add('introduction', TextType::class, [
                'label' => "Introduction",
                'attr' => [
                    'placeholder' => "Présentez vous en quelques mots..."
                ]
            ])
            ->add('description', TextareaType::class, [
                'label' => "Description détaillée",
                'attr' => [
                    'placeholder' => "Présentez vous en détail..."
                ]
            ]);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => User::class,
        ]);
    }
}
