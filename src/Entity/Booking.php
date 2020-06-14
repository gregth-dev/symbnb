<?php

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use App\Repository\BookingRepository;
use Doctrine\ORM\Mapping\HasLifecycleCallbacks;
use Symfony\Component\Validator\Constraints as Assert;

/**
 * @ORM\Entity(repositoryClass=BookingRepository::class)
 * @ORM\HasLifecycleCallbacks()
 */
class Booking
{
    /**
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @ORM\ManyToOne(targetEntity=User::class, inversedBy="bookings")
     * @ORM\JoinColumn(nullable=false)
     */
    private $booker;

    /**
     * @ORM\ManyToOne(targetEntity=Ad::class, inversedBy="bookings")
     * @ORM\JoinColumn(nullable=false)
     */
    private $ad;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\Type("\DateTimeInterface")
     * @Assert\GreaterThanOrEqual(
     *      value = "today",
     *      message = "La date doit être supérieure ou égale à aujourd'hui", groups={"front"}
     * )
     */
    private $startDate;

    /**
     * @ORM\Column(type="datetime")
     * @Assert\Type("\DateTimeInterface")
     * @Assert\GreaterThan(
     *     propertyPath="startDate",
     *     message="La date de fin doit être supérieur à la date de départ"
     * )
     */
    private $endDate;

    /**
     * @ORM\Column(type="datetime")
     */
    private $createdAt;

    /**
     * @ORM\Column(type="float")
     */
    private $amount;

    /**
     * @ORM\Column(type="text", nullable=true)
     */
    private $comment;

    /**
     * Initialise createdAt et amout
     * @ORM\PrePersist
     * @ORM\PreUpdate
     * @return void
     */
    public function prePersist()
    {
        if (!$this->createdAt)
            $this->createdAt = new \DateTime('now', new \DateTimeZone("Europe/Paris"));
        // prix de l'annonce * nombre de jour
        if (!$this->amount)
            $this->amount = $this->ad->getPrice() * $this->getDuration();
    }

    public function getDuration()
    {
        $diff = $this->endDate->diff($this->startDate);
        return $diff->days;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getBooker(): ?User
    {
        return $this->booker;
    }

    public function setBooker(?User $booker): self
    {
        $this->booker = $booker;

        return $this;
    }

    public function getAd(): ?Ad
    {
        return $this->ad;
    }

    public function setAd(?Ad $ad): self
    {
        $this->ad = $ad;

        return $this;
    }

    public function getStartDate(): ?\DateTimeInterface
    {
        return $this->startDate;
    }

    public function setStartDate(\DateTimeInterface $startDate): self
    {
        $this->startDate = $startDate;

        return $this;
    }

    public function getEndDate(): ?\DateTimeInterface
    {
        return $this->endDate;
    }

    public function setEndDate(\DateTimeInterface $endDate): self
    {
        $this->endDate = $endDate;

        return $this;
    }

    public function getCreatedAt(): ?\DateTimeInterface
    {
        return $this->createdAt;
    }

    public function setCreatedAt(\DateTimeInterface $createdAt): self
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    public function getAmount(): ?float
    {
        return $this->amount;
    }

    public function setAmount(float $amount): self
    {
        $this->amount = $amount;

        return $this;
    }

    public function getComment(): ?string
    {
        return $this->comment;
    }

    public function setComment(?string $comment): self
    {
        $this->comment = $comment;

        return $this;
    }

    /**
     * Vérifie la disponibilité des dates pour la réservation
     *
     * @return boolean
     */
    public function isBookableDates()
    {
        // On récupère les dates déja occupées
        $notAvailableDays = $this->ad->getNotAvailableDays();
        // On test si les dates sont prises
        foreach ($this->getDays() as $day) {
            if (array_search($day, $notAvailableDays))
                return false;
        }
        return true;
    }

    /**
     * Permet de récupérer les jours qui correspondent à la réservation
     *
     * @return array Tableau de date
     */
    public function getDays()
    {
        $days = [];
        for ($i = 0; $i < $this->getDuration(); $i++) {
            $days[] = (clone $this->startDate)->modify("+$i day")->format('d/m/Y');
        }
        return $days;
    }


    /* public function getDays()
    {
        $resultat = range(
            $this->getStartDate()->getTimestamp(),
            $this->getEndDate()->getTimestamp(),
            24 * 60 * 60
        );
        $days = array_map(function ($dayTimestamp) {
            return new \DateTime(date('Y-m-d', $dayTimestamp));
        }, $resultat);
        return $days;
    } 

    public function isBookableDates()
    {
        // On récupère les dates déja occupées
        $notAvailableDays = $this->ad->getNotAvailableDays();
        // Jours de la réservation
        $bookingDays = $this->getDays();
        // Tableau qui contient des chaînes de caractères de mes journées
        $formatDay = function ($day) {
            return $day->format('Y-m-d');
        };

        $days = array_map($formatDay, $bookingDays);
        $notAvailable = array_map($formatDay, $notAvailableDays);

        foreach ($bookingDays as $day) {
            if (array_search($day, $notAvailableDays))
            return false;
        }
        return true;
    }*/
}
