<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Modules
 *
 * @ORM\Table(name="modules")
 * @ORM\Entity
 */
class Modules
{
    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=64, nullable=false)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="definition", type="text", length=65535, nullable=false)
     */
    private $definition;

    /**
     * @var string
     *
     * @ORM\Column(name="rng", type="text", length=65535, nullable=false)
     */
    private $rng;

    /**
     * @var string
     *
     * @ORM\Column(name="sch", type="text", length=65535, nullable=false)
     */
    private $sch;

    /**
     * @var string
     *
     * @ORM\Column(name="tbxmd", type="text", length=65535, nullable=false)
     */
    private $tbxmd;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;


}
