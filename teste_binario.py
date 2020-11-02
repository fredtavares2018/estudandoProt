# aqui é a busca binária
def pesquisa_binaria(codigosCadastrados, minimo, maximo, buscar):

    if maximo < minimo:
        return -1  # retornar -1 indica que não existe na Lista

    # calcula se o numero digitado está no meio da Lista
    meio = (minimo + maximo) // 2
    if codigosCadastrados[meio] == buscar:
        return meio

    # verifica se esta antes ou apos o meio da lista
    elif codigosCadastrados[meio] > buscar:
        return pesquisa_binaria(codigosCadastrados, minimo, meio - 1, buscar)
    else:
        return pesquisa_binaria(codigosCadastrados, meio + 1, maximo, buscar)

# aqui podemos montar essas duas listas separando o que vem  do banco
codigosCadastrados = [0, 10, 20, 30, 40, 50, 60, 70]
animaisCadastrados = ['Boi', 'Vaca', 'Bode', 'Ovelha', 'Cabrito', 'Tatu', 'Passarinho', 'Cachorro']


# aqui podemos montar essas duas listas separando o que vem  do banco
codigo = input('Digite o codigo para pesquisar: ') # você recebe uma str = string
numero_procurado = int(codigo) # transforma uma str em inteiro = int
pesquisa_binaria(codigosCadastrados, 0, len(codigosCadastrados) - 1, numero_procurado)


# aqui comparamos a resposta vinda da funcao e imprimimos a resposta
para_teste = pesquisa_binaria(codigosCadastrados, 0, len(codigosCadastrados) - 1, numero_procurado)
if(int(para_teste) != -1):
    print('Sua busca retornou: ', animaisCadastrados[int(para_teste)])
else:
    print('Nada foi encontrado!')
