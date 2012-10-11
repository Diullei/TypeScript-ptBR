{{=layout.topo}}
{{=layout.menu}}

<script>
    $('body').addClass('tutorial');
    $('.selected').each(function(i, el){ $(el).removeClass('selected'); });
    $('#tutorial-link').addClass('selected');
</script>

<div class="intro">
    <div class="quick-start">
        <div class="centered-container">
            <h2>Primeiros passos</h2>
            <div class="sample first clearfix">
                <div class="left">
                    <p>
				Vamos iniciar instalando o TypeScript. Podemos instalar o TypeScript de duas formas diferentes.
				Podemos utilizar o gerenciador de pacotes do Node.js (npm) ou instalar o plugin do TypeScript para Visual Studio 2012.
                    </p>
                </div>
                <div class="code">
Para usu&#225;rios do Visual Studio 2012:<pre><a href="http://go.microsoft.com/fwlink/?LinkID=266563" target="_blank">Instale o plugin do TypeScript no Visual Studio 2012</a>
    </pre>
                    <br>
Para usu&#225;rios Node.js utilizando NPM:
                    <pre>&gt; npm install -g typescript
                    </pre>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>No seu editor escreve o seguinte c&#243;digo e salve em um arquivo chamado <tt>greeter.ts</tt>:</p>
                </div>
                <div class="code">
                    <pre id="sample1"><span class="kw">function</span> greeter(person) {
    <span class="kw">return</span> <span class="str">"Hello, "</span> + person;
}

<span class="kw">var</span> user = <span class="str">"Jane User"</span>;

document.body.innerHTML = greeter(user);
                    </pre>
                    <a class="inplayground" href="http://www.typescriptlang.org/Playground/#ex1">Executar online</a>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
				
                    <p>Usamos a extens&#227;o .ts para escrever c&#243;digo TypeScript.
                    </p>
                    <p>Execute o TypeScript com a seguinte linha de comando:</p>
                </div>
                <div class="code">
                    <pre>&gt; tsc greeter.ts</pre>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>Como resultado da compila&#231;&#227;o do TypeScript ser&#225; gerado um arquivo chamado <tt>greeter.js</tt> que cont&#233;m o mesmo c&#243;digo JavaScript do arquivo anterior.
					(Repare que a formata&#231;&#227;o e os coment&#225;rios n&#227;o ser&#227;o preservados). Agora podemos executar o c&#243;digo gerado pelo compilador do TypeScript em nosso pr&#243;prio ambiente JavaScript.
                    </p>
					
                    <p>Vamos come&#231;ar a adicionar algumas sintaxes espec&#237;ficas do TypeScript ao nosso c&#243;digo para entender o que o TypeScript nos oferece.
					Adicione o codigo <tt>": string"</tt> ao argumento 'person' da fun&#231;&#227;o <tt>greeter</tt> como exibido abaixo:</p>
                </div>
                <div class="code">
                    <pre id="sample2"><span class="kw">function</span> greeter(person: <span class="type">string</span>) {
    <span class="kw">return</span> <span class="str">"Hello, "</span> + person;
}

<span class="kw">var</span> user = <span class="str">"Jane User"</span>;

document.body.innerHTML = greeter(user);
                    </pre>
                    <a class="inplayground" href="http://www.typescriptlang.org/Playground/#ex2">Executar online</a>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>
					Repare que esta altera&#231;&#227;o de c&#243;digo define o tipo do arqumento person para string. Chamamos este tipo de defini&#231;&#227;o de tipo de "Type anotation" 
					e com ele &#233; poss&#237;vel definir o tipo de vari&#225;veis e retornos de fun&#231;&#245;es. Nossa fun&#231;&#227;o <tt>greeter</tt> s&#243; ser&#225; chamada corretamente se passarmos uma string como argumento. Agora se tentarmos passar um tipo diferente como argumento o compilador do TypeScript ir&#225; reclamar e acusar erro.
					Para entender isso vamos tentar passar um array como argumento. Veja o c&#243;digo:
                    </p>
                </div>
                <div class="code">
                    <pre id="sample3"><span class="kw">function</span> greeter(person: <span class="type">string</span>) {
    <span class="kw">return</span> <span class="str">"Hello, "</span> + person;
}

<span class="kw">var</span> user = [0, 1, 2];

document.body.innerHTML = greeter(user);
                    </pre>
                    <a class="inplayground" href="http://www.typescriptlang.org/Playground/#ex3">Executar online</a>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>Tente recompilar este c&#243;digo e voc&#234; ter&#225; o seguinte erro:</p>
                </div>
                <div class="code">
                    <pre>greeter.ts(7,26): Supplied parameters do not match any signature of call target</pre>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
				
                    <p>Da mesma forma se tentarmos remover os argumentos da chamada da func&#227;o <tt>greeter</tt> o compilador do TypeScript ir&#225; informar um erro dizendo que esta fun&#231;&#227;o precisa de um argumento para ser chamada. Em todos os casos o compilador do TypeScript ir&#225; analizar o c&#243;digo de acordo com os seus tipos informados.
                    </p>
					
                    <p>&#233; importante entender que mesmo com erros no c&#243;digo o compilador do TypeScript ir&#225; gerar o arquivo <tt>greeter.js</tt>. Voc&#234; pode usar o TypeScript mesmo se tiver erros em seu c&#243;digo, mas neste caso o TypeScript ir&#225; alertar que seu c&#243;igo poder&#225; funcionar de forma incorreta.
                    </p>
					
					<p>Agora vamos alterar mais uma vez nosso c&#243;digo. Vamos criar uma interface chamada Person que ir&#225; descrever um objeto que cont&#233;m os campo <tt>firstname</tt> e <tt>lastname</tt>. Isso ir&#225; nos permitir definir a estrutura do argumento da fun&#231;&#227;o <tt>greeter</tt>. Veja o c&#243;digo:
					</p>
					
                </div>
                <div class="code">
                    <pre id="sample4"><span class="kw">interface</span> Person {
    firstname: <span class="type">string</span>;
    lastname: <span class="type">string</span>;
}

<span class="kw">function</span> greeter(person : <span class="type">Person</span>) {
    <span class="kw">return</span> <span class="str">"Hello, "</span> + person.firstname + <span class="str">" "</span> + person.lastname;
}

<span class="kw">var</span> user = {firstname: <span class="str">"Jane"</span>, lastname: <span class="str">"User"</span>};

document.body.innerHTML = greeter(user);
</pre>
                    <a class="inplayground" href="http://www.typescriptlang.org/Playground/#ex4">Executar online</a>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
					<p>Finalmente vamos ao uso das classes. O TypeScript suporta a cria&#231;&#227;o de classes baseada na proposta ES6.</p>
					<p>Vamos criar uma classes chamada <tt>Student</tt> com um construtor e com alguns campos publicos.</p>
				</div>
                <div class="code">
                    <pre id="sample5"><span class="kw">class</span> Student {
    fullname : <span class="type">string</span>;
    constructor(<span class="mod">public</span> firstname, <span class="mod">public</span> middleinitial, <span class="mod">public</span> lastname) {
        this.fullname = firstname + <span class="str">" "</span> + middleinitial + <span class="str">" "</span> + lastname;
    }
}

<span class="kw">interface</span> Person {
    firstname: <span class="type">string</span>;
    lastname: <span class="type">string</span>;
}

<span class="kw">function</span> greeter(person : <span class="type">Person</span>) {
    return <span class="str">"Hello, "</span> + person.firstname + <span class="str">" "</span> + person.lastname;
}

<span class="kw">var</span> user = <span class="kw">new</span> Student(<span class="str">"Jane"</span>, <span class="str">"M."</span>, <span class="str">"User"</span>);

document.body.innerHTML = greeter(user);
</pre>
                    <a class="inplayground" href="http://www.typescriptlang.org/Playground/#ex5">Executar online</a>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
									
                    <p>Compile novamente o c&#243;digo usando <tt>tsc greeter.ts</tt> e veja que as classes em TypeScript s&#227;o apenas uma simplifica&#231;&#227;o da estrutura OO baseada em prot&#243;tipos que j&#225; conhecemos e utilizamos no JavaScript convencional.
                    </p>
                    <p>Para rodar o c&#243;digo final no navegador crie um arquivo html chamado <tt>greeter.html</tt> com o c&#243;digo abaixo:</p>
                </div>
                <div class="code">
                    <noscript>You will be unable to see this code sample because script is disabled in your browser.</noscript>
                    <pre id="sample6">&lt;!DOCTYPE html&gt;
&lt;html&gt;
    &lt;head&gt;&lt;title&gt;TypeScript Greeter&lt;/title&gt;&lt;/head&gt;
    &lt;body&gt;
        &lt;script src="greeter.js"&gt;&lt;/script&gt;
    &lt;/body&gt;
&lt;/html&gt;</pre>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>Abra o arquivo <tt>greeter.html</tt> no seu navegador para ver em a&#231;&#227;o a sua primeira aplica&#231;&#227;o criada com TypeScript!</p>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
					<p><span class="strong">Opcionalmente:</span> abra o arquivo <tt>greeter.ts</tt> no visual studio ou copie seu conteudo para o <a href="http://www.typescriptlang.org/Playground/#ex5" target="_blank">TypeScript playground</a>.
					Assim voc&#234; poder&#225; mover o mouse sobre os identificadores para visualizar seus tipo.</p>
					
					<p>Veja exemplos de aplica&#231;&#245;es escritas em TypeScript neste <a href="http://www.typescriptlang.org/Samples">link</a>.</p>
                </div>
<img src="img/greet_person.png" alt="Visual Studio picture" id="tutorialDemoImg">
            </div>
        </div>
    </div>
</div>
    
{{=layout.rodape}}