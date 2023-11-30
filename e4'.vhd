library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
entity ROM_16 is
port(
  CLOCK: in std_logic;
  ADDR: in std_logic_vector(3 downto 0);
  DATA: out std_logic_vector(7 downto 0)
);
end ROM_16;

architecture Behavioral of ROM_16 is

  type ROM_Array is array(0 to 15) of std_logic_vector(7 downto 0);
  signal ROM: ROM_Array := (
    x"00", x"78", x"88", x"98",
    x"04", x"05", x"06", x"07",
    x"08", x"09", x"0A", x"0B",
    x"0C", x"0D", x"0E", x"0F"
  );
  

begin

  process(CLOCK)
  begin
    if(rising_edge(CLOCK)) then
      DATA <= ROM(to_integer(unsigned(ADDR)));
    end if;
  end process;

 

end Behavioral;
