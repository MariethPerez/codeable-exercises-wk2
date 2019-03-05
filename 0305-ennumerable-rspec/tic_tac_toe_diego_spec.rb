require "./metodos_ttt_diego"

fila = [["X", "X", "X"], ["-", "-", "-"], ["-", "-", "-"]]
columna = [["X", "-", "-"], ["X", "-", "-"], ["X", "-", "-"]]
diagonal = [["X", "-", "-"], ["-", "X", "-"], ["-", "-", "X"]]


RSpec.describe "test validar ganadores" do
  it "expect validar fila = The gamer X win" do
    expect(validar_fila(fila, true)).to eq("The gamer X win")
  end

  it "expect validar columna = The gamer X win" do
    expect(validar_columna(columna, true)).to eq("The gamer X win")
  end

  it "expect validar diagonal = The gamer X win" do
    expect(validar_diagonales(diagonal, true)).to eq("The gamer X win")
  end

  it "expect validar fila = The gamer X win" do
    expect(validar_fila(fila, false)).to eq("The gamer O win")
  end

  it "expect validar columna = The gamer X win" do
    expect(validar_columna(columna, false)).to eq("The gamer O win")
  end

  it "expect validar diagonal = The gamer X win" do
    expect(validar_diagonales(diagonal, false)).to eq("The gamer O win")
  end
end