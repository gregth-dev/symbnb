<?php

namespace App\Service;

use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\RequestStack;
use Twig\Environment;


/**
 * Class Pagination
 * Affiche une pagination dans la page en fonction d'une classe donnée en paramètre
 * Ne pas oublier de configurer services.yaml en lien avec cette class
 */
class Pagination
{

    /**
     * Entité sur laquelle on applique la pagination
     *
     * @var string
     */
    private $entityClass;

    /**
     * Nombre d'éléments à afficher par page
     *
     * @var integer
     */
    private $limit = 10;

    /**
     * Page en cours de lecture
     *
     * @var integer
     */
    private $currentPage = 1;

    /**
     * Manager Doctrine
     *
     * @var EntityManagerInterface
     */
    private $manager;

    /**
     * Gestionnaire de template twig
     *
     * @var Environment
     */
    private $twig;

    /**
     * Chemin du template de pagination
     *
     * @var string
     */
    private $templatePath;


    /**
     * Contructeur public
     *
     * @param EntityManagerInterface $manager
     * @param Environment $twig
     * @param RequestStack $request
     * @param string $templatePath
     */
    public function __construct(EntityManagerInterface $manager, Environment $twig, RequestStack $request, $templatePath)
    {
        $this->request = $request;
        $this->manager = $manager;
        $this->twig = $twig;
        $this->templatePath = $templatePath;
    }

    /**
     * Affiche la pagination dans la page
     *
     * @return void
     */
    public function render()
    {
        $this->twig->display($this->getTemplatePath(), [
            'page' => $this->getCurrentPage(),
            'pages' => $this->getPages(),
            'route' => $this->getRoute()
        ]);
    }

    /**
     * Renvoie les données de la classe renseignée
     *
     * @return object[]
     */
    public function getData()
    {
        $offset = $this->currentPage * $this->limit - $this->limit;
        $data = $this->getRepo()->findBy([], [], $this->limit, $offset);
        return $data;
    }

    /**
     * Renvoie le nombre de page
     *
     * @return integer
     */
    public function getPages()
    {
        return ceil(count($this->getRepo()->findAll()) / $this->limit);
    }

    /**
     * Get the value of entityClass
     */
    public function getEntityClass()
    {
        return $this->entityClass;
    }

    /**
     * Set the value of entityClass
     *
     * @return  self
     */
    public function setEntityClass($entityClass)
    {
        $this->entityClass = $entityClass;

        return $this;
    }

    /**
     * Get the value of limit
     */
    public function getLimit()
    {
        return $this->limit;
    }

    /**
     * Set the value of limit
     *
     * @return  self
     */
    public function setLimit($limit)
    {
        $this->limit = $limit;

        return $this;
    }

    /**
     * Get the value of currentPage
     */
    public function getCurrentPage()
    {
        return $this->currentPage;
    }

    /**
     * Set the value of currentPage
     *
     * @return  self
     */
    public function setCurrentPage($currentPage)
    {
        $this->currentPage = $currentPage;

        return $this;
    }

    /**
     * Get the value of repo
     * Renvoie le repository de la class concernée
     */
    public function getRepo()
    {
        if (!$this->entityClass)
            throw new \Exception(("La classe pour la pagination n'a pas été renseignée dans Pagination::setEntityClass()"));
        return $this->manager->getRepository($this->entityClass);
    }

    /**
     * Get the value of route
     */
    public function getRoute()
    {
        return $this->request->getCurrentRequest()->attributes->get('_route');
    }

    /**
     * Get the value of templatePath
     */
    public function getTemplatePath()
    {
        return $this->templatePath;
    }

    /**
     * Set the value of templatePath
     *
     * @return  self
     */
    public function setTemplatePath($templatePath)
    {
        $this->templatePath = $templatePath;

        return $this;
    }
}
