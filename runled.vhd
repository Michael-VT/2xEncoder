library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity runled is
    Port ( clk : in  STD_LOGIC;
           nreset : in  STD_LOGIC;
           leds : out  STD_LOGIC_VECTOR (7 downto 0)
           );
end runled;
architecture Behavioral of runled is
    constant DELAY_TACKTS : natural := natural(0.5 * 25e6); -- count this constant at 25MHz to delay 0.2 seconds
    signal leds_internal : std_logic_vector (7 downto 0) := (0 => '1', others => '0');
    signal delay_cntr : natural range 1 to DELAY_TACKTS := 1;
begin
    leds <= leds_internal;
    process (clk, nreset)
    begin
        if (nreset = '0') then
            leds_internal <= (0 => '1', others => '0');
            delay_cntr <= 1;
        elsif rising_edge(clk) then
            if (delay_cntr = DELAY_TACKTS) then
                delay_cntr <= 1;
                leds_internal <= leds_internal(6 downto 0) & leds_internal(7);  -- cyclic shift
            else
                delay_cntr <= delay_cntr + 1;
            end if;
        end if;
    end process;
end Behavioral;
