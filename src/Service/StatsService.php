<?php

namespace App\Service;

use App\Entity\Ad;
use App\Entity\Booking;
use App\Entity\Comment;
use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;


class StatsService
{

    private $manager;

    public function __construct(EntityManagerInterface $manager)
    {
        $this->manager = $manager;
    }

    private function getUsersCount()
    {
        return count($this->manager->getRepository(User::class)->findAll());
    }

    private function getAdsCount()
    {
        return count($this->manager->getRepository(Ad::class)->findAll());
    }

    private function getBookingsCount()
    {
        return count($this->manager->getRepository(Booking::class)->findAll());
    }

    private function getCommentsCount()
    {
        return count($this->manager->getRepository(Comment::class)->findAll());
    }

    public function getStatsCount()
    {
        $users = $this->getUsersCount();
        $ads = $this->getAdsCount();
        $bookings = $this->getBookingsCount();
        $comments = $this->getCommentsCount();
        return compact('users', 'ads', 'bookings', 'comments');
    }

    public function getAdsStats($order)
    {
        return $this->manager
            ->createQuery(
                'SELECT AVG(c.rating) as note, a.title, a.id, u.firstName, u.lastName, u.picture 
            FROM App\Entity\Comment c 
            JOIN c.ad a
            JOIN a.author u
            GROUP BY a
            ORDER BY note ' . $order
            )
            ->setMaxResults(5)
            ->getResult();
    }
}
