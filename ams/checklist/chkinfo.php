<?php
include ('./connect.php');
if (isset($_POST['register'])) {
    try {
        $modulename = $_POST['modulename'];
        $department = $_POST['department'];
        $description = $_POST['description'];
        $xstat = $_POST['xstat'];

        
        $conn->beginTransaction();
    
        $stmt = $conn->prepare("SELECT `modulename` FROM `g58_compliance_regulatory` WHERE `modulename` = :modulename AND `department` = :department");
        $stmt->execute([
            'modulename' => $modulename,
            'department' => $department,

        ]);
       // $nameExist = $stmt->fetch(PDO::FETCH_ASSOC);
    
        //if (empty($nameExist)) {}  
            $insertStmt = $conn->prepare("INSERT INTO `g58_compliance_regulatory` (`modulename`, `department`, `description`, `xstat`) VALUES (:modulename, :department, :description, :xstat)");
            $insertStmt->bindParam(':modulename', $modulename, PDO::PARAM_STR);
            $insertStmt->bindParam(':department', $department, PDO::PARAM_STR);
            $insertStmt->bindParam(':description', $description, PDO::PARAM_STR);
            $insertStmt->bindParam(':xstat', $xstat, PDO::PARAM_STR);
            $insertStmt->execute();
            
            session_start();
            $conn->commit();
         

        
        if (session_destroy() == true) {
            echo "
            <script>
                alert('Submitted Successfully.');
                window.location.href = 'http://localhost/ams/checklist/chk.php';
            </script>
            ";
        } 
    } catch (PDOException $e) {
        $conn->rollBack();
        echo "Error: " . $e->getMessage();
    }
}
?>