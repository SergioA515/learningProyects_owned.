<?php
class officialEmployed{
    private $id;
    private $rol;
    private $hourValue;
    private $workHours;

    /**
     * Get the value of id
     */ 
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set the value of id
     *
     * @return  self
     */ 
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }
    public function getRol(){
        return $this->rol;
    }
    public function setRol($rol){
        $this->rol = $rol;
    }
    public function getHourValue(){
        return $this->hourValue;
    }
    public function setHourValue($hourValue){
        $this->hourvalue = $hourValue;
    }
    public function getWorkHours(){
        return $this-> workHours;
    }
    public function setWorkHours($workHours){
        $this->workHours = $workHours;
    }
    //public function
    //funciones get & set

}