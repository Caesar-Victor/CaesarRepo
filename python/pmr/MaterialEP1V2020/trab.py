import pandas as pd
import nltk as nk
import matplotlib.pyplot as plt
import wordcloud as wd
from nltk.corpus import stopwords
from wordcloud import WordCloud, STOPWORDS, ImageColorGenerator

varlivro = 1
livro = ''
while varlivro <= 3:
    if varlivro == 1:
        livro = 'AliceInWonderland.txt'
    elif varlivro == 2:
        livro = 'ThroughTheLookingGlass.txt'
    elif varlivro == 3:
        livro = 'WarAndPeace.txt'
    # Abre o arquivo
    f = open(livro, 'r')
    raw = f.read()  # Le o conteudo do arquivo
    # Cria um tokenizer que mantem somente palavras
    tokenizer = nk.tokenize.RegexpTokenizer('\w+')
    tokens = tokenizer.tokenize(raw)
    # A variavel tokens e' uma lista de tokens
    # transformando todos os tokens em letras minusculas
    lwords = []
    for word in tokens:
        lwords.append(word.lower())
    
    # lwords agora so contem tokens com letras minusculas
    #
    # carrega as stopwords da lingua Inglesa em sw
    sw = nk.corpus.stopwords.words('english')
    words_ns = []
    for word in lwords:
        if word not in sw:
            words_ns.append(word)
    # word_ns contem tokens sem stopwords
    
    freqdist0 = []
    adc = False
    for i in words_ns:
        adc = False
        for j in freqdist0:
            if i == j[0]:
                j[1] += 1
                adc = True
        if not adc:
            freqdist0.append([i, 1])

    freqdist = []
    maior = 1
    for i in freqdist0:
        if maior < i[1]:
            maior = i[1]

    while maior > 0:
        atual=0
        for i in freqdist0:
            if i[1] == maior:
                freqdist.append(i)
        atual+=1
        maior -= 1

    ldict={}
    ldict=dict(freqdist)

    while len(ldict) > 20:
        x=ldict.popitem()

    listbar=[]
    for i in ldict:
        listbar.append([i,ldict[i]])

    l = {}
    for x in listbar:
        l.update([x])
  
    wordc = wd.WordCloud(width=900, height=500, max_words=20,
                        relative_scaling=1, normalize_plurals=False).generate_from_frequencies(l)
    plt.figure()
    plt.imshow(wordc, interpolation='bilinear')
    plt.axis("off")
    plt.show()

    freqword = pd.DataFrame.from_records(listbar, columns=['word', 'count'])
    freqword.plot(kind='bar', x='word')
    plt.show()

    varlivro+=1