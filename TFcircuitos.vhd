library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use IEEE.std_logic_unsigned.all;
entity TFcircuitos is
	
	port (  
		reloj: in  std_logic;  
		reset: in std_logic;
		Sdec: out std_logic_vector (3 downto 0); 
		Sund: out std_logic_vector (3 downto 0);
		Mund: out std_logic_vector (3 downto 0);
		Mdec: out std_logic_vector (3 downto 0)
		
	);  

end TFcircuitos;
	
architecture Behavioral of TFcircuitos is
--Declaración de señales

signal segundero: std_logic_vector (3 downto 0);
signal segundero1: std_logic_vector (3 downto 0);
signal minutero: std_logic_vector (3 downto 0);
signal minutero1: std_logic_vector (3 downto 0);
--Comienzo
begin

process(reset,reloj)

begin
	if (falling_edge(reloj)) then
		if (reset = '1') then       --Boton de Reset!
			segundero<="0000";
			segundero1<="0000";
			minutero<= "0000";
			minutero1 <= "0000";
		else
			
				segundero <= segundero + 1;  
	end if; 
			if(segundero = "1001")then  
				segundero <= "0000";
				segundero1 <= segundero1 + 1;
			end if;
			
			if((segundero = "1001") and (segundero1 = "0101")) then 
					segundero <= "0000";
				segundero1 <= "0000";
				minutero <= minutero +1; 
			end if;
			if (minutero = "1001") then 
				minutero1<= minutero1 + 1; 
			end if;
			if((minutero = "1001") and (minutero1 = "0101")) then 
				segundero<="0000";
				segundero1<="0000";
				minutero<= "0000";
				minutero1 <= "0000";
			end if; 

	
	end if;
end process;
Sund <= segundero; 
Sdec <= segundero1;
Mund <= minutero; 
Mdec <= minutero1; 
end Behavioral;