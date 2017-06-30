<?php

namespace AppBundle\Controller;

use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\API\Repository\Values\Content\Content;
use eZ\Publish\Core\MVC\Symfony\View\ContentView;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use eZ\Publish\API\Repository\Values\Content\LocationQuery;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;

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

    public function getChildrenAction($template, $parentLocationId)
    {
        //Get an instance of the eZ SearchService for the heavy lifting
        $searchService = $this->container->get('ezpublish.api.service.inner_search');
        // Set up a brand new Location query
        $query = new LocationQuery();
        // Build a criteria
        $criteria = new Criterion\LogicalAnd(
            [
                // Only visible content items please
                new Criterion\Visibility(Criterion\Visibility::VISIBLE),

                // Only children of the current parent please
                new Criterion\ParentLocationId($parentLocationId)
            ]
        );
        // Add the criteria to your query
        $query->query = $criteria;
        $locations = $searchService->findLocations($query);
        dump($locations);
        $menuItems = [];
        foreach ($locations->searchHits as $searchHit) {
            $menuItems[] = $searchHit->valueObject;
        }
        $response = $this->render(
            $template, ['menuItems' => $menuItems]
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