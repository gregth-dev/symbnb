<?php

namespace App\Entity;

use Symfony\Component\Validator\Constraints as Assert;

class PasswordUpdate
{


    private $oldPassword;

    /**
     * @Assert\NotBlank
     * @Assert\NotCompromisedPassword
     * @Assert\Regex(pattern="/^(?=.*[A-z])(?=.*[A-Z])(?=.*[0-9])(?=.*\W).{8,}$/",match=true,message="Sécurité du mot de passe incorrect. Minimum 8 caractères, 1 chiffre, 1 majuscule, 1 caractère spécial")
     */
    private $newPassword;

    /**
     * Get the value of oldPassword
     */
    public function getOldPassword()
    {
        return $this->oldPassword;
    }

    /**
     * @Assert\EqualTo(propertyPath="newPassword", message="Le mot de passe doit être identique")
     */
    private $confirmPassword;

    public function setOldPassword(string $oldPassword): self
    {
        $this->oldPassword = $oldPassword;

        return $this;
    }

    public function getNewPassword(): ?string
    {
        return $this->newPassword;
    }

    public function setNewPassword(string $newPassword): self
    {
        $this->newPassword = $newPassword;

        return $this;
    }

    public function getConfirmPassword(): ?string
    {
        return $this->confirmPassword;
    }

    public function setConfirmPassword(string $confirmPassword): self
    {
        $this->confirmPassword = $confirmPassword;

        return $this;
    }
}
