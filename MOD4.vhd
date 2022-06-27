library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL; 
use IEEE.std_logic_unsigned.all;

entity MOD4 is
  port (
    CLK   : in std_logic;
	 salida : out std_logic_vector(1 downto 0)

	 );
	 end entity MOD4;
	 
	 
architecture funcional of MOD4 is
		signal Q:std_logic_vector(1 downto 0); 
		begin
		  process(CLK) is
		  begin
			if falling_edge(CLK) then
				Q<= Q+1;
			end if; 
		  end process;
		  
		 salida <= Q; 

end funcional;