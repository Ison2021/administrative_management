<?php
class sreport extends \koolreport\KoolReport
{
    use \koolreport\clients\Bootstrap;
protected function settings(){
    return array(
        "dataSources"=>array(
            "rkiv_clusterb"=>array(
            "connectionString"=>"mysql:host=localhost;dbname=rkiv_clusterb",
            "username"=>"root",
            "password"=>"",
            "charset"=>"utf8"
            )
        )
    );
}

protected function setup()
{
    $this->src("rkiv_clusterb")
    ->query("
    SELECT * FROM g58_compliance_regulatory
    ")
    ->pipe($this->dataStore("result"));
}
}
