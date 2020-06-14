<?php

namespace App\Controller\Admin;

use App\Entity\Comment;
use App\Form\CommentType;
use App\Service\Pagination;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;

class AdminCommentController extends AbstractController
{
    /**
     * @Route("/admin/comments/{page<\d+>?1}", name="admin_comment_index")
     */
    public function index(Pagination $pagination, $page)
    {
        $pagination
            ->setEntityClass(Comment::class)
            ->setCurrentPage($page);

        return $this->render('admin/comment/index.html.twig', [
            'pagination' => $pagination
        ]);
    }


    /**
     * Permet de modifier une annonce
     * @Route("/admin/comments/{id}/edit",name="admin_comment_edit")
     * @param Comment $comment
     * @return Response
     */
    public function edit(Comment $comment, Request $request, EntityManagerInterface $manager)
    {
        $form = $this->createForm(CommentType::class, $comment);
        $form->handleRequest($request);
        if ($form->isSubmitted() && $form->isValid()) {
            $manager->persist($comment);
            $manager->flush();
            $this->addFlash('success', "Le commentaire a bien été modifiée.");
        }
        return $this->render('admin/comment/edit.html.twig', ['comment' => $comment, 'form' => $form->createView()]);
    }

    /**
     * Permet de supprimer une annonce
     * @Route("/admin/comments/{id}/delete",name="admin_comment_delete")
     * @param Ad $ad
     * @param EntityManagerInterface $manager
     * @return Response
     */
    public function delete(Comment $comment, EntityManagerInterface $manager)
    {
        $manager->remove($comment);
        $manager->flush();
        $this->addFlash('success', "Le commentaire N°{$comment->getId()} a bien été supprimée.");

        return $this->redirectToRoute('admin_comment_index');
    }
}
