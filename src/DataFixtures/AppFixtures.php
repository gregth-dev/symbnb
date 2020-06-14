<?php

namespace App\DataFixtures;

use App\Entity\Ad;
use App\Entity\Booking;
use App\Entity\Comment;
use Faker\Factory;
use App\Entity\User;
use App\Entity\Image;
use App\Entity\Role;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Common\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class AppFixtures extends Fixture
{
    public function __construct(UserPasswordEncoderInterface $encoder)
    {
        $this->encoder = $encoder;
    }

    public function load(ObjectManager $manager)
    {
        $faker = Factory::create();

        $adminRole = new Role();
        $adminRole->setTitle('ROLE_ADMIN');
        $manager->persist($adminRole);
        // Création d'un admin
        $adminUser = new User();
        $adminUser
            ->setFirstName('Greg')
            ->setLastName('Thorel')
            ->setEmail('gregory.thorel@live.fr')
            ->setHash($this->encoder->encodePassword($adminUser, '1981bobY!'))
            ->setPicture('https://randomuser.me/api/portraits/men/55.jpg')
            ->setIntroduction($faker->sentence())
            ->setDescription($faker->paragraph(9))
            ->addUserRole($adminRole);
        $manager->persist($adminUser);
        // Gestion des utilisateurs
        $users = [];
        $genres = ['male', 'female'];
        for ($i = 1; $i <= 10; $i++) {
            $user = new User();
            $genre = $faker->randomElement($genres);
            $id = mt_rand(1, 99);
            $pictureGenre = $genre === 'male' ? 'men' : 'women';
            $picture = 'https://randomuser.me/api/portraits/' . $pictureGenre . '/' . $id . '.jpg';
            $hash = $this->encoder->encodePassword($user, 'password');

            $user
                ->setFirstName($faker->firstName($genre))
                ->setLastName($faker->lastName)
                ->setEmail($faker->email)
                ->setPicture($picture)
                ->setHash($hash)
                ->setIntroduction($faker->sentence)
                ->setDescription($faker->paragraph(5));
            $manager->persist($user);
            $users[] = $user;
        }

        // Gestion des annonces
        for ($i = 1; $i <= 30; $i++) {
            $user = $users[mt_rand(0, count($users) - 1)];
            $title = $faker->sentence();
            $ad = new Ad();
            $ad
                ->setTitle($title)
                ->setContent($faker->paragraph(10))
                ->setIntroduction($faker->paragraph(2))
                ->setCoverImage('https://picsum.photos/1000/350?random=' . $i)
                ->setPrice(mt_rand(39, 149))
                ->setRooms(mt_rand(1, 5))
                ->setCreatedAt(new \DateTime('now', new \DateTimeZone('Europe/Paris')))
                ->setAuthor($user);
            for ($j = 1; $j <= mt_rand(2, 5); $j++) {
                $image = new Image();
                $image
                    ->setUrl('https://picsum.photos/200/300?random=' . $j)
                    ->setCaption($faker->sentence(1))
                    ->setAd($ad);
                $manager->persist($image);
            }

            // Gestion des reservations
            for ($k = 1; $k <= mt_rand(0, 10); $k++) {
                $booking = new Booking();
                // dateTimeBetween renvoie un objet DateTime
                $createdAt = $faker->dateTimeBetween('-6 months');
                $startDate = $faker->dateTimeBetween('-3 months');
                $duration = mt_rand(3, 10);
                // On se sert de la fonction modify pour ajouter du temps au DateTime 
                // On utilise "clone" pour faire une copie et ne pas modifier le startDate de départ
                $endDate = (clone $startDate)->modify("+$duration days");
                $amout = $ad->getPrice() * $duration;
                $booker = $users[mt_rand(0, count($users) - 1)];
                $comment = $faker->paragraph();

                $booking
                    ->setBooker($booker)
                    ->setAd($ad)
                    ->setStartDate($startDate)
                    ->setEndDate($endDate)
                    ->setCreatedAt($createdAt)
                    ->setAmount($amout)
                    ->setComment($comment);
                $manager->persist($booking);

                // Gestion des commentaires
                if (mt_rand(0, 1)) {
                    $comment = new Comment();
                    $comment
                        ->setContent($faker->paragraph())
                        ->setRating(mt_rand(1, 5))
                        ->setAuthor($booker)
                        ->setAd($ad);
                    $manager->persist($comment);
                }
            }

            $manager->persist($ad);
        }

        $manager->flush();
    }
}
