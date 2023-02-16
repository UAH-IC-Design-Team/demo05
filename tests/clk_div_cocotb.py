import cocotb
from cocotb.triggers import Timer


@cocotb.test()
async def clk_div_cocotb(dut):
    dut.clk.value = 0
    dut.reset.value = 1
    await Timer(1, units="ns")
    dut.clk.value = 1
    await Timer(1, units="ns")
    dut.reset.value = 0
    await Timer(1, units="ns")

    for cycle in range(10):
        dut.clk.value = 0
        await Timer(1, units="ns")
        dut.clk.value = 1
        await Timer(1, units="ns")

    assert dut.clk_out == 1



