{{=layout.topo}}
{{=layout.menu}}

    <div id="main-callout">
        <h1>
            TypeScript &#233; uma linguagem para desenvolvimento JavaScript em larga escala.<br>
            Com TypeScript podemos escrever c&#243;digo utilizando uma estrutura fortemente tipada e ter este c&#243;digo compilado para JavaScript puro.<br>
            Qualquer navegador.  Qualquer host.  Qualquer SO.  C&#243;digo Aberto.
        </h1>
        <div class="getbtn clearfix">
            <a href="#Download" title="Get TypeScript Now">Baixar o TypeScript! <span class="arrow">&nbsp;</span></a>
        </div>
    </div>

    <div id="home-panorama">
        <div id="panorama-1" class="panorama-main positioned-panorama hidden" style="opacity: 0; ">
            <div class="city-container">
                <div class="clouds1" id="clouds1" data-speed="0.05" data-max="1500" data-left="-1000" style="left: 471.4683333333146px; ">&nbsp;</div>
                <div class="clouds2" id="clouds2" data-speed="0.04" data-max="500" data-left="-1700" style="left: 377.17466666665916px; ">&nbsp;</div>
                <div class="clouds3" id="clouds3" data-speed="0.025" data-max="1640" data-left="-800" style="left: 235.7341666666573px; ">&nbsp;</div>
                <div class="clouds4" id="clouds4" data-speed="0.015" data-max="400" data-left="-2000" style="left: 141.4404999999918px; ">&nbsp;</div>
                <div class="city">&nbsp;</div>
            </div>
            <div class="callout">
                <h2>Escal&#225;vel</h2>
                <p>TypeScript nos permite escrever c&#243;digo utilizando classes, m&#243;dulos e interfaces para nos ajudar a escrever componentes robustos.</p>
                <p>Todas estas funcionalidades est&#227;o dispon&#237;veis apenas em tempo de desenvolvimento e s&#227;o compiladas para JavaScript puro.
                </p>
                <p>Com TypeScript podemos escrever interfaces que nos permitem obter informa&#231;&#245;es de componentes e bibliotecas JavaScript existentes.
                </p>
            </div>
        </div>
        <div id="panorama-2" class="panorama-main hidden" style="opacity: 0; ">
            <div class="clearfix" style="width: 100%;">
                <div class="callout">
                    <h2>Come&#231;e com JavaScript, Termine com JavaScript</h2>
                    <p>TypeScript utiliza uma sintaxe de c&#243;digo que milh&#245;es de programadores JavaScript utilizam diariamente.</p>
                    <p>Com TypeScript voc&#234; pode usar c&#243;digo JavaScript existente, integrar bibliotecas JavaScript populares e ter seu c&#243;digo chamado por outro c&#243;digo JavaScript.</p>
                    <p>Por ser compilado para JavaScript puro o TypeScript roda em qualquer navegador, no Node.js, ou em qualquer outro ambiente JavaScript compat&#237;vel com ES3.
                    </p>
                </div>
                <pre class="code"><span class="kw">class</span> Point {
    x: <span class="kw">number</span>;
    y: <span class="kw">number</span>;
    <span class="kw">constructor</span>(x: <span class="kw">number</span>, y: <span class="kw">number</span>) {
        <span class="kw">this</span>.x = x;
        <span class="kw">this</span>.y = y;
    }
    getDist() { 
        <span class="kw">return</span> Math.sqrt(<span class="kw">this</span>.x * <span class="kw">this</span>.x + 
                         <span class="kw">this</span>.y * <span class="kw">this</span>.y); 
    }
}
<span class="kw">var</span> p = <span class="kw">new</span> Point(3,4);
<span class="kw">var</span> dist = p.<span class="err">getDst</span>();
alert(<span class="str">"Hypotenuse is: "</span> + dist);</pre>
            </div>
        </div>
        <div id="panorama-3" class="panorama-main" style="opacity: 1; ">
            <div class="clearfix" style="width: 100%;">
                <div class="callout">
                    <h2>Ferramentas robustas para desenvolvimento de grandes aplica&#231;&#245;es</h2>
                    <p>Por porporcionar uma tipagem forte o TypeScript fornece a seus desenvolvedores ferramentas que possibilitam a checagem est&#225;tica de tipos, na vega&#231;&#227;o baseada em s&#237;mbolos, autocomplete e refatora&#231;&#227;o automática de c&#243;digo.
                    </p>
                    <p>A utiliza&#231;&#227;o desta tipagem &#233; opicional. Isso torna nosso c&#243;digo bastante flex&#237;vel.
                    </p>
                </div>
                <img src="img/vs-refactor.png" alt="Strong Tools: Visual Studio Integration" style="border: 1px solid black;">
            </div>
        </div>
    </div>

    <div id="home-dlbar">
        <div class="dlbar-content">
            <div data-hash-nav="Download" class="has-hash-nav clearfix">
                <div class="dl-info first node">
                    <h2>Node.js</h2>
                    <p>&#201; poss&#237;vel compilar c&#243;digo TypeScript utilizando nodejs. Para instalar e executar siga os comandos abaixo.</p>
                    <div id="node-samples">
                        <dl class="clearfix">
                            <dt>Instalar</dt>
                            <dd>npm install -g typescript</dd>
                        </dl>
                        <dl class="clearfix">
                            <dt>Compilar</dt>
                            <dd>tsc helloworld.ts</dd>
                        </dl>
                    </div>
                </div>

                <div class="dl-info vsix">
                    <h2>Ferramentas</h2>
                    <p>Desenvolvedores familiarizados com o Visual Studio podem instalar o plugin do TypeScript e utilizar o Visual Studio como editor. Existe tamb&#233;m suporte TypeScript para <a href="http://aka.ms/qwe1qu">outros editores.</a></p>
                    <p><a class="dl-link" href="http://go.microsoft.com/fwlink/?LinkID=266563">Baixe o plugin</a> </p>
                </div>

                <div class="dl-info oss">
                    <h2>C&#243;digo Aberto</h2>
                    <p>O TypeScript est&#225; sendo desenvolvido no CodePlex.  O compilador do TypeScript &#233; escrito em TypeScript, e pode ser executado em qualquer ambiente JavaScript.</p>
                    <a class="dl-link" href="http://typescript.codeplex.com/SourceControl/BrowseLatest">Veja o c&#243;digo fonte</a>
                </div>
            </div>
        </div>
    </div>
    <div id="home-community">
        <div class="cobar-content">
            <div data-hash-nav="Community" class="has-hash-nav clearfix">
                <div class="co-info first comm1">
                    <video width="360" height="202" poster="http://media.ch9.ms/ch9/c3e5/e5e02f2e-5962-48db-9ddd-85e27a4fc3e5/IntroducingTSAndersH_512.jpg" controls="">
                    <source src="http://media.ch9.ms/ch9/c3e5/e5e02f2e-5962-48db-9ddd-85e27a4fc3e5/IntroducingTSAndersH_mid.mp4" type="video/mp4">
                    <source src="http://media.ch9.ms/ch9/c3e5/e5e02f2e-5962-48db-9ddd-85e27a4fc3e5/IntroducingTSAndersH.webm" type="video/webm">
                    <a href="http://media.ch9.ms/ch9/c3e5/e5e02f2e-5962-48db-9ddd-85e27a4fc3e5/IntroducingTSAndersH_high.mp4" target="_blank"><img src="img/video-overlay-anders.png" alt="Anders Hejlsberg" style="width:360px;"></a>
                    </video>
                </div>

                <div class="co-info comm2">
                    <h2>Contribuir</h2>
                    <p>Leia a especifica&#231;&#227;o em <a href="http://go.microsoft.com/fwlink/?LinkId=267121">doc</a> ou <a href="http://go.microsoft.com/fwlink/?LinkId=267238">pdf</a></p>
                    <p><a href="http://typescript.codeplex.com/discussions" target="_blank">Para feedback e lista de discuss&#227;o.</a></p>
                    <p>Experimente o <a href="#Download">TypeScript</a> e <a href="http://typescript.codeplex.com/WorkItem/Create" target="_blank">ajudenos a aprimora-lo</a>.</p>
                    <p>Siga <a href="http://twitter.com/i/#!/search/?q=%23typescript" target="_blank">#typescript</a> no Twitter e <a href="http://typescript.codeplex.com/project/feeds/rss">acompanhe o projeto no CodePlex</a>.</p>
                </div>

                <div class="co-info comm3">
                    <h2>Aprender</h2>
                    <p><a href="http://www.typescriptlang.org/Tutorial">Tutorial</a> - O melhor caminho para aprender come&#231;ar a aprender TypeScript</p>
                    <p><a href="http://stackoverflow.com/search?q=TypeScript" target="_blank">F&#243;rums</a> - Aprenda junto com outras pessoas, compartilhe d&#250;vias e ajude outros a aprenderem TypeScript.</p>
                </div>
            </div>
        </div>
    </div>

    <script type="text/javascript" src="js/Clouds.js"></script>
    <script type="text/javascript">
        $(function () {
            var p = TSSite.PanoramaContainer.initialize(document.querySelector('#home-panorama'), '.panorama-main');
            p.timeout = 15000;
            p.begin();

            var hashNavTargets = [];
            $('.has-hash-nav').each(function (index, item) {
                var selector = $(item).data('hash-nav');
                hashNavTargets[selector] = item;
            });

            function getTopHeight() {
                // handle adaptive layout
                var topHeight = $('#nav').height();;
                if ($('html').width() < 775) {
                    topHeight = 0;
                }
                else {
                    if ($('html').height() < 480) {
                        var topVal = $('#nav').css('top');
                        if (topVal && typeof topVal === 'string') {
                            topVal = topVal.substring(0, topVal.length - 1);
                            topVal = parseInt(topVal);
                        }

                        topHeight = topHeight + topVal;
                    }
                }

                return topHeight;
            }

            function scrollTo(selector) {
                var target = hashNavTargets[selector];
                if (target) {
                    var offset = getTopHeight();

                    // Now animate
                    $('html, body').animate({ scrollTop: $(target).offset().top - offset }, 250, 'swing');
                }
            }

            $('a').each(function (index, item) {
                var $item = $(item);
                if ($item.attr('href').indexOf('/#') === 0) {
                    var ref = $item.attr('href').substring(2);
                    $item.click(function (e) {
                        //e.preventDefault();
                        scrollTo(ref);
                    });
                }
            });

            var currentLoc = window.location.hash;
            if (currentLoc && currentLoc.length > 0) {
                currentLoc = currentLoc.substring(1);
                scrollTo(currentLoc);
            }
        });
    </script>
    
{{=layout.rodape}}