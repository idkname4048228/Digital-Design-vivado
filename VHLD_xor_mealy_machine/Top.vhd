library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Top is
    Port (
        clk : in std_logic;
        reset : in std_logic;
        x : in std_logic;
        z : out std_logic
        );
end Top;

architecture Behavioral of Top is
type state is ( s1, s0 );

signal present_state : state;
signal next_state : state;

begin

process (clk, reset)    begin
    if reset = '0' then
        present_state <= s0; 
    elsif clk'event and clk = '1' then
        present_state <= next_state;
    end if;
end process;

process ( x, present_state )    begin
    case present_state is 
        when s0 =>
            if x = '0' then 
                next_state <= s0;
                z <='1';
            else
                next_state <= s1;
                z <= '0';
            end if;
        when s1 =>
            if x = '0' then 
                next_state <= s1;
                z <='0';
            else
                next_state <= s0;
                z <= '1';
            end if;
        end case;
end process;

end Behavioral;
