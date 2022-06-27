library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity muxdisplay_top is
port (
    mod4: 	    in STD_LOGIC_vector (1 downto 0);	
	 datosmin: 			 in std_logic_vector(3 downto 0);
	 datossec: in std_logic_vector (3 downto 0);
    display: 	    out STD_LOGIC_VECTOR(6 downto 0);
    cur_display:    out STD_LOGIC_VECTOR(3 downto 0)
);
end muxdisplay_top;

architecture beh of muxdisplay_top is
    signal refresh_state: STD_LOGIC_VECTOR(1 downto 0);
    signal display_sel: STD_LOGIC_VECTOR(3 downto 0);
	
begin
    cur_display <= display_sel;
	refresh_state <= mod4; 
    show_display: process(refresh_state) 
        begin -- selección del display 
            case refresh_state is 
                when "00" => 
                    display_sel <= "1110"; -- display 0 
                when "01" => 
                    display_sel <= "1101"; -- display 1 
                when "10" => 
                    display_sel <= "1011"; -- display 2 
                when "11" => 
                    display_sel <= "0111"; -- display 3 
                when others => 
                    display_sel <= "1111"; 
            end case; 

            -- mostrar digitos 
            case datosmin is 
    when "0000" => display <= "0000001"; -- "0"     
    when "0001" => display <= "1001111"; -- "1" 
    when "0010" => display <= "0010010"; -- "2" 
    when "0011" => display <= "0000110"; -- "3" 
    when "0100" => display <= "1001100"; -- "4" 
    when "0101" => display <= "0100100"; -- "5" 
    when "0110" => display <= "0100000"; -- "6" 
    when "0111" => display <= "0001111"; -- "7" 
    when "1000" => display <= "0000000"; -- "8"     
    when "1001" => display <= "0000100"; -- "9" 
	 when others =>
		    display <= "1111111";  
	    end case;
		             case datossec is 
    when "0000" => display <= "0000001"; -- "0"     
    when "0001" => display <= "1001111"; -- "1" 
    when "0010" => display <= "0010010"; -- "2" 
    when "0011" => display <= "0000110"; -- "3" 
    when "0100" => display <= "1001100"; -- "4" 
    when "0101" => display <= "0100100"; -- "5" 
    when "0110" => display <= "0100000"; -- "6" 
    when "0111" => display <= "0001111"; -- "7" 
    when "1000" => display <= "0000000"; -- "8"     
    when "1001" => display <= "0000100"; -- "9" 
	 when others =>
		    display <= "1111111";  
	    end case;
	end process;
end beh;