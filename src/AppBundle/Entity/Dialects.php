<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Dialects
 *
 * @ORM\Table(name="dialects", uniqueConstraints={@ORM\UniqueConstraint(name="name", columns={"name"})}, indexes={@ORM\Index(name="name_2", columns={"name"})})
 * @ORM\Entity
 */
class Dialects
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
     * @ORM\Column(name="dca_rng", type="text", length=65535, nullable=false)
     */
    private $dcaRng;

    /**
     * @var string
     *
     * @ORM\Column(name="dca_sch", type="text", length=65535, nullable=false)
     */
    private $dcaSch;

    /**
     * @var string
     *
     * @ORM\Column(name="dct_nvdl", type="text", length=65535, nullable=false)
     */
    private $dctNvdl;

    /**
     * @var string
     *
     * @ORM\Column(name="dct_sch", type="text", length=65535, nullable=false)
     */
    private $dctSch;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="AppBundle\Entity\Modules")
     * @ORM\JoinTable(name="dialects_modules",
     *   joinColumns={
     *     @ORM\JoinColumn(name="dialects_id", referencedColumnName="id", onDelete="CASCADE")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="modules_id", referencedColumnName="id", onDelete="CASCADE")
     *   }
     * )
     */
    private $modules;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->modules = new \Doctrine\Common\Collections\ArrayCollection();
    }

}
