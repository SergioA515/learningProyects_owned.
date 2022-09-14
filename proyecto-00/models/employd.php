<?php
class employed{
    private $id;
    private $name;
    private $lastName;
    private $direction;

    public function _construct(){  
    }
    public function getId(){
        $id=$this->id;
        return $id;
    }
    public function setId($id){
        $this->id=$id;
    }
    public function getName(){
        $name=$this->name;
        return $name;
    }
    public function setName($name){
        $this->name=$name;
    }
    public function getLastname(){
        $lastName=$this->lastName;
        return $lastName;
    }
    public function setLastname($lastName){
        $this->lastName=$lastName;
    }
    public function getDirection(){
        $direction=$this->direction;
        return $direction;
    }
    public function setDirection($direction){
        $this->direction=$direction;
    } 
}
