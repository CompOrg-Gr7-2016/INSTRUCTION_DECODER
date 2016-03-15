-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "03/14/2016 23:19:54"
                                                            
-- Vhdl Test Bench template for design  :  INSTRUCTION_DECODER
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY INSTRUCTION_DECODER_vhd_tst IS
END INSTRUCTION_DECODER_vhd_tst;
ARCHITECTURE INSTRUCTION_DECODER_arch OF INSTRUCTION_DECODER_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address_25_0 : STD_LOGIC_VECTOR(25 DOWNTO 0);
SIGNAL funct_5_0 : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL immediate_15_0 : STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL instruction : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL opcode_31_26 : STD_LOGIC_VECTOR(5 DOWNTO 0);
SIGNAL rd_15_11 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rs_25_21 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL rt_20_16 : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL shamt_10_6 : STD_LOGIC_VECTOR(4 DOWNTO 0);
COMPONENT INSTRUCTION_DECODER
	PORT (
	address_25_0 : OUT STD_LOGIC_VECTOR(25 DOWNTO 0);
	funct_5_0 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	immediate_15_0 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
	opcode_31_26 : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
	rd_15_11 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	rs_25_21 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	rt_20_16 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
	shamt_10_6 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : INSTRUCTION_DECODER
	PORT MAP (
-- list connections between master ports and signals
	address_25_0 => address_25_0,
	funct_5_0 => funct_5_0,
	immediate_15_0 => immediate_15_0,
	instruction => instruction,
	opcode_31_26 => opcode_31_26,
	rd_15_11 => rd_15_11,
	rs_25_21 => rs_25_21,
	rt_20_16 => rt_20_16,
	shamt_10_6 => shamt_10_6
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        instruction <= x"FC1F07C0"; 
        wait for 10 ns;
        instruction <= x"FC1F0000"; 
        wait for 10 ns;
        instruction <= x"FC000000"; 
WAIT;                                                        
END PROCESS always;                                          
END INSTRUCTION_DECODER_arch;
