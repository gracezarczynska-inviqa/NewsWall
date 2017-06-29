<?php

namespace AppBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Response;

class mainController extends Controller
{
    /**
     * @Route("/", name="index")
     */
    public function indexAction()
    {
        $response = $this->render(
            '@ezdesign/news/news.html.twig', []
        );
        return $response;
    }

    public function getContentAction($parentLocationId) {
        $ContentObjectRepository = $this->container->get('newswall.content.object.repository');

        $content = $ContentObjectRepository->getContentByParentLocation($parentLocationId);

        return $this->render(
            '@ezdesign/news/news-object-list.html.twig', $content
        );
    }

    public function getContentByCategoryAction($category) {
        $repository = $this->container->get('newswall.content.object.repository');

        $content = $repository->getContentByFieldValue('category', $category);

        return $this->render(
            '@ezdesign/news/news-object-list.html.twig', $content
        );
    }

    /**
     * @Route("/category/{category}", name="category", requirements={"category": "\d+"})
     */
    public function categoryAction($category) {
        return $this->render(
            '@ezdesign/news/category.html.twig', array('category' => $category)
        );
    }
}