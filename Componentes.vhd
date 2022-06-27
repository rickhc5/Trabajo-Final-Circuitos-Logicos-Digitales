library ieee;
use ieee.std_logic_1164.all;
package Componentes is 

component TFcircuitos is
        port (
        reloj: in  std_logic;
        reset: in std_logic;
        Sdec: out std_logic_vector (3 downto 0); 
        Sund: out std_logic_vector (3 downto 0);
        Mund: out std_logic_vector (3 downto 0);
        Mdec: out std_logic_vector (3 downto 0)

    ); 
end component; 

component MOD4 is
port (
    CLK   : in std_logic;
	 salida : out std_logic_vector(1 downto 0)

	 );
end component; 

component MUXA is 
port(     a,b: in std_logic_vector (3 downto 0);
        s: in std_logic_vector (1 downto 0);
        z: out std_logic_vector (3 downto 0));
end component; 

component MUXB is 
port(     a,b: in std_logic_vector (3 downto 0);
        s: in std_logic_vector (1 downto 0);
        z: out std_logic_vector (3 downto 0));
end component; 

component muxdisplay_top is 
port (
    mod4: 	    in STD_LOGIC_vector (1 downto 0);	
	 datosmin: 			 in std_logic_vector(3 downto 0);
	 datossec: in std_logic_vector (3 downto 0);
    display: 	    out STD_LOGIC_VECTOR(6 downto 0);
    cur_display:    out STD_LOGIC_VECTOR(3 downto 0)
);
end component; 

end Componentes;