library ieee;
use ieee.std_logic_1164.all;
entity MUXA is
port(     a,b: in std_logic_vector (3 downto 0);
        s: in std_logic_vector (1 downto 0);
        z: out std_logic_vector (3 downto 0));
end MUXA;
architecture arqmux4 of MUXA is
begin
   process (s,a,b)
    begin
    case s is 
	 when "00" => z <= "----"; 
	 when "01" =>  z <= "----";
	 when "10" =>  z <= a;
	 when "11" =>  z <= b; 
	 end case; 
    end process;
end arqmux4;