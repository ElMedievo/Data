<?php
	echo "---------- SQL Info ---------". "\xA";
	$servername = readline("<- Host: ");
	$username = readline("<- Username: ");
	$password = readline("<- Password: ");
	echo "-----------------------------". "\xA";

	$conn = new mysqli($servername, $username, $password);

	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}

	echo "---------- Medievo ---------" . "\xA";

	###

	$create_db = "CREATE DATABASE medievo";
	if ($conn->query($create_db) === TRUE) {
	    echo "-> Database created successfully." . "\xA";
	} else {
	    echo "-> Error creating database: " . $conn->error . "\xA";
	}

	###

	$create_player_data = "CREATE TABLE `medievo`.`player_data` 
			( 
			`uuid` VARCHAR(50) NOT NULL ,
			`name` VARCHAR(16) NOT NULL ,
			`gold` INT NOT NULL ,
			`clan` VARCHAR(16) NOT NULL ,
			`kills` INT NOT NULL ,
			`killed` INT NOT NULL ,
			`deaths` INT NOT NULL
			) 
			ENGINE = InnoDB;
			";
	if ($conn->query($create_player_data) === TRUE) {
	    echo "-> player_data table created successfully." . "\xA";
	} else {
	    echo "-> Error creating player_data table: " . $conn->error . "\xA";
	}

	###

	$create_clans_data = "CREATE TABLE `medievo`.`clans_data` 
			( 
			`name` VARCHAR(16) NOT NULL , 
			`leader_uuid` VARCHAR(50) NOT NULL , 
			`leader_name` VARCHAR(16) NOT NULL 
			) 
			ENGINE = InnoDB;
			";
	if ($conn->query($create_clans_data) === TRUE) {
	    echo "-> clans_data table created successfully." . "\xA";
	} else {
	    echo "-> Error creating clans_data table " . $conn->error . "\xA";
	}

	###

	$create_economy_data = "CREATE TABLE `medievo`.`economy_data` 
			( 
			`clan` VARCHAR(16) NOT NULL , 
			`gold_ingot` INT NOT NULL , 
			`gold_nugget` INT NOT NULL , 
			`golden_carrot` INT NOT NULL , 
			`gold_barding` INT NOT NULL , 
			`gold_block` INT NOT NULL , 
			`gold_sword` INT NOT NULL , 
			`gold_spade` INT NOT NULL , 
			`gold_pickaxe` INT NOT NULL , 
			`gold_axe` INT NOT NULL , 
			`gold_hoe` INT NOT NULL , 
			`gold_helmet` INT NOT NULL , 
			`gold_chestplate` INT NOT NULL , 
			`gold_leggings` INT NOT NULL , 
			`gold_boots` INT NOT NULL , 
			`golden_apple` INT NOT NULL , 
			`alfonsos` INT NOT NULL 
			) 
			ENGINE = InnoDB;
			";
	if ($conn->query($create_economy_data) === TRUE) {
	    echo "-> economy_data table created successfully." . "\xA";
	} else {
	    echo "-> Error creating economy_data table " . $conn->error . "\xA";
	}

	###

	$conn->close();
	echo "-----------------------------" . "\xA";
?> 