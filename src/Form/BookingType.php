<?php

namespace App\Form;

use App\Entity\Booking;
use App\Form\DataTransformer\FrenchToDateTimeTransformer;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;
use Symfony\Component\Form\Extension\Core\Type\TextType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class BookingType extends AbstractType
{

    private $transformer;

    public function __construct(FrenchToDateTimeTransformer $transformer)
    {
        $this->transformer = $transformer;
    }

    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add(
                'startDate',
                TextType::class,
                [
                    'label' => "Date d'arrivée",
                    'attr' => [
                        'placeholder' => "Date à laquelle vous souhaitez arriver",
                    ]
                ]
            )
            ->add(
                'endDate',
                TextType::class,
                [
                    'label' => "Date de départ",
                    'attr' => [
                        'placeholder' => "Date à laquelle vous quittez les lieux"
                    ]
                ]
            )
            ->add(
                'comment',
                TextareaType::class,
                [
                    'label' => false,
                    'attr' => [
                        'placeholder' => "Laissez votre commentaire si besoin...",

                    ],
                    'required' => false
                ]
            );
        // Utilisation de la class FrenchToDateTimeTransformer
        // Sinon utiliser une fonction CallBackTransformer
        $builder->get('startDate')->addModelTransformer($this->transformer);
        $builder->get('endDate')->addModelTransformer($this->transformer);
    }

    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults([
            'data_class' => Booking::class,
            'validation_groups' => [
                "Default",
                'front'
            ]
        ]);
    }
}
