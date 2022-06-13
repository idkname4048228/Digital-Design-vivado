library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity time_simulate is
--  Port ( );
end time_simulate;

architecture Behavioral of time_simulate is
signal clock        : std_logic;
signal reset        : std_logic;
signal input_x      : std_logic;
signal output_z : std_logic;

component Top 
    port(
        clk : in std_logic;
        reset : in std_logic;
        x : in std_logic;
        z : out std_logic
        );
end component;
begin
    test_circuit : Top port map( clk => clock, reset =>reset, x =>input_x, z =>output_z);     
    
    process
    begin
        for i in 1 to 0 loop
            clock <= '1';
            wait for 100NS;
            clock <= '0';
            wait for 100NS;
            clock <= '1';
            wait for 100NS;
            clock <= '0';
            wait for 100NS;
            clock <= '1';
            wait for 100NS;
            clock <= '0';
            wait for 100NS;
            clock <= '1';
            wait for 100NS;
            clock <= '0';
            wait for 100NS;
        end loop;
    end process;


end Behavioral;
