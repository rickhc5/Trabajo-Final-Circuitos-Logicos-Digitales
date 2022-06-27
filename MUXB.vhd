library ieee;
use ieee.std_logic_1164.all;
entity MUXB is
port(     a,b: in std_logic_vector (3 downto 0);
        s: in std_logic_vector (1 downto 0);
        z: out std_logic_vector (3 downto 0));
end MUXB;
architecture arqmux4 of MUXB is
begin
   process (s,a,b)
    begin
    case s is 
	 when "00" => z <= a; 
	 when "01" => z <= b;
	 when "10" => z <= "----";
	 when "11" =>  z <= "----" ;
	 end case; 
    end process;
end arqmux4;