<?php

namespace App\Form\DataTransformer;

use Symfony\Component\Form\DataTransformerInterface;
use Symfony\Component\Form\Exception\TransformationFailedException;

/**
 * Class qui gère la transformation des champs startDate et endDate de BookingType
 */
class FrenchToDateTimeTransformer implements DataTransformerInterface
{
    public function transform($date)
    {
        return $date ? $date->format('d/m/Y') : '';
    }

    public function reverseTransform($frenchDateFormat)
    {
        // frenchDateFormat = 21/09/1979
        if (!$frenchDateFormat)
            throw new TransformationFailedException("Vous devez fournir une date");
        $date = \DateTime::createFromFormat('d/m/Y', $frenchDateFormat);
        if (!$date)
            throw new TransformationFailedException("Format de date incorrect");
        return $date;
    }
}
