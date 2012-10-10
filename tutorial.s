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
            <h2>Quick Start</h2>
            <div class="sample first clearfix">
                <div class="left">
                    <p>Let's get started by building a simple web application with TypeScript.  
                       There are two main ways to get the TypeScript tools: 
                        via the Node.js package manager (npm) or 
                        by installing the TypeScript for Visual Studio 2012 plugin.  
                    </p>
                </div>
                <div class="code">
For Visual Studio 2012 users:<pre><a href="http://go.microsoft.com/fwlink/?LinkID=266563" target="_blank">Install TypeScript for Visual Studio 2012</a>
    </pre>
                    <br>
For NPM users:
                    <pre>&gt; npm install -g typescript
                    </pre>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>In your editor, type the following JavaScript code in <tt>greeter.ts</tt>:</p>
                </div>
                <div class="code">
                    <pre id="sample1"><span class="kw">function</span> greeter(person) {
    <span class="kw">return</span> <span class="str">"Hello, "</span> + person;
}

<span class="kw">var</span> user = <span class="str">"Jane User"</span>;

document.body.innerHTML = greeter(user);
                    </pre>
                    <a class="inplayground" href="http://www.typescriptlang.org/Playground/#ex1">Open in Playground</a>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>We used a .ts extension, but this code is just JavaScript.  You could have copy/pasted this straight
                        out of an existing JavaScript app.
                    </p>
                    <p>At the command line, run the TypeScript compiler:</p>
                </div>
                <div class="code">
                    <pre>&gt; tsc greeter.ts</pre>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>The result will be a file <tt>greeter.js</tt> which contains the same JavaScript that you fed in
                        (Note: In current builds, formatting and comments are not fully preserved, this is temporary).  We're 
                        up and running using TypeScript in our JavaScript app!
                    </p>
                    <p>Now we can start taking advantage of some of the new tools TypeScript offers.  Add a <tt>": string"</tt>
                        type annotation to the 'person' function argument as shown here:</p>
                </div>
                <div class="code">
                    <pre id="sample2"><span class="kw">function</span> greeter(person: <span class="type">string</span>) {
    <span class="kw">return</span> <span class="str">"Hello, "</span> + person;
}

<span class="kw">var</span> user = <span class="str">"Jane User"</span>;

document.body.innerHTML = greeter(user);
                    </pre>
                    <a class="inplayground" href="http://www.typescriptlang.org/Playground/#ex2">Open in Playground</a>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>Type annotations in TypeScript are lightweight ways to record the intended contract of the function
                        or variable.  In this case, we intend the <tt>greeter</tt> function to be called with a single string 
                        parameter.  We can try changing the call <tt>greeter</tt> to pass an array instead:
                    </p>
                </div>
                <div class="code">
                    <pre id="sample3"><span class="kw">function</span> greeter(person: <span class="type">string</span>) {
    <span class="kw">return</span> <span class="str">"Hello, "</span> + person;
}

<span class="kw">var</span> user = [0, 1, 2];

document.body.innerHTML = greeter(user);
                    </pre>
                    <a class="inplayground" href="http://www.typescriptlang.org/Playground/#ex3">Open in Playground</a>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>Re-compiling, you'll now see an error:</p>
                </div>
                <div class="code">
                    <pre>greeter.ts(7,26): Supplied parameters do not match any signature of call target</pre>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>Similarly, try removing all the arguments to the <tt>greeter</tt> call.  TypeScript will let 
                        you know that you have called this function with an unexpected number of parameters.  In both cases,
                        TypeScript can offer static analysis based on both the structure of your code, and the type annotations
                        you provide.
                    </p>
                    <p>Notice that although there were errors, the <tt>greeter.js</tt> file is still created.  You can use
                        TypeScript even if there are errors in your code.  But in this case, TypeScript is warning that your
                        code will likely not run as expected.
                    </p>
                    <p>Let's develop our sample further.  Here we use an interface that describes objects that have a <tt>firstname</tt> and <tt>lastname</tt> field.
                    This allows us to type not only by the name a structure has by also by the structure itself.  
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
                    <a class="inplayground" href="http://www.typescriptlang.org/Playground/#ex4">Open in Playground</a>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>Finally, let's extend the example one last time with classes.  TypeScript supports the current ES6 proposal for class-based object-oriented programming. </p>
                    <p>Here we create a <tt>Student</tt> class with a constructor and a few public fields.  Notice that classes and interfaces play well together, letting the programmer decide what 
                    is the right level of abstraction.
                    </p>
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
                    <a class="inplayground" href="http://www.typescriptlang.org/Playground/#ex5">Open in Playground</a>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p>Re-run <tt>tsc greeter.ts</tt> and you'll see the generated JavaScript is the same as the earlier
                        code.  Classes in TypeScript are just a shorthand for the same prototype-based OO that is frequently
                        used in JavaScript.
                    </p>
                    <p>Now - type the following in <tt>greeter.html</tt>:</p>
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
                    <p>Open <tt>greeter.html</tt> in the browser to run your first simple TypeScript web application!</p>
                </div>
            </div>
            <hr>
            <div class="sample clearfix">
                <div class="left">
                    <p><span class="strong">Optional:</span> Open <tt>greeter.ts</tt> in Visual Studio, or copy the code into the <a href="http://www.typescriptlang.org/Playground/#ex5" target="_blank">TypeScript playground</a>.  
                        You can hover over identifiers to see their types.  Notice that in some cases these types are inferred automatically for you, 
                        as with <tt>user</tt>.  Re-type the last line, and see completion lists and 
                        parameter help based on the types of the DOM elements.  Put your cursor on the reference to the <tt>greeter</tt>
                        function, and hit F12 to go to its definition.  Notice, too, that you can right click on a symbol and use 
                        refactoring to rename the symbol.</p>
                    <p>The type information provided works together with the tools to work with JavaScript at application scale.  For more examples of what's possible in TypeScript, see the <a href="http://www.typescriptlang.org/Samples">Samples</a> section of the website.
                    </p>
                </div>
<img src="img/greet_person.png" alt="Visual Studio picture" id="tutorialDemoImg">
            </div>
        </div>
    </div>
</div>
    
{{=layout.rodape}}