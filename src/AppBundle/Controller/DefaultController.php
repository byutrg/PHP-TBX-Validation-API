<?php

/* 
 * Copyright (c) 2017 James Hayes <james.s.hayes@gmail.com>.
 * All rights reserved. This program and the accompanying materials
 * are made available under the terms of the Eclipse Public License v1.0
 * which accompanies this distribution, and is available at
 * http://www.eclipse.org/legal/epl-v10.html
 *
 * Contributors:
 *    James Hayes <james.s.hayes@gmail.com> - initial API and implementation and/or initial documentation
 */

namespace AppBundle\Controller;

use FOS\RestBundle\Controller\FOSRestController;

class DefaultController extends FOSRestController
{
    public function getAction()
    {        
        $view = $this->view(null, 200)
                ->setFormat('html')
                ->setTemplate('default/index.html.twig');
        
        return $this->handleView($view);
    }
    
    public function getDialectAction($dialect_name)
    {
        $sanitized = preg_replace("[^\w\-]", "", $dialect_name);
        
        $dialects = $this->getDoctrine()->getRepository(\AppBundle\Entity\Dialects::class)
                ->findBy(array('name'=>$sanitized));
        
        $view = $this->view($dialects);
        return $this->handleView($view);
    }
    
    public function getDialectsAction()
    {
        $dialects = $this->getDoctrine()->getRepository(\AppBundle\Entity\Dialects::class)
                ->findAll();
        
        $view = $this->view($dialects);
        return $this->handleView($view);
    }
    
    public function getModuleAction($module_name)
    {
        $sanitized = preg_replace("[^\w0-9]", "", $module_name);
        
        $dialects = $this->getDoctrine()->getRepository(\AppBundle\Entity\Modules::class)
                ->findBy(array('name'=>$sanitized));
        
        $view = $this->view($dialects);
        return $this->handleView($view);
    }
    
    public function getModulesAction()
    {
        $dialects = $this->getDoctrine()->getRepository(\AppBundle\Entity\Modules::class)
                ->findAll();
        
        $view = $this->view($dialects);
        return $this->handleView($view);
    }
}
