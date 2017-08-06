
    <div class="container">

    <#include "logo.ftl">

      <div class="row">

        <div class="col-sm-8 blog-main">

        <#function summary content marker=(config.summary_marker)!"<!-- more -->">
            <#assign idx = content?index_of(marker) />
            <#if idx gt 0>
                <#return content?substring(0,idx)>
            <#else>
                <#return content>
            </#if>
        </#function>

        <#list posts as post>
          <#if (post.status == "published")>
            <div class="blog-post">
              <div class="row aligned-row">
                  <div class="col-md-8"><h2 class="blog-post-title"> <a href="${post.uri}">${post.title}</a></h2></div>
                  <div class="col-md-4"><p class="blog-post-meta">${post.date?string("dd.MM.yyyy")}</p></div>
              </div>
              <div style="margin-left: 20px; margin-right: 25px; margin-top: 10px;">${summary(post.body)}</div>
                <a class="btn btn-default" href="${post.uri}">Read More →</a>
            </div>
          </#if>
        </#list>




          <nav>
            <ul class="pager">
              <li><a href="#">Previous</a></li>
              <li><a href="#">Next</a></li>
            </ul>
          </nav>

        </div><!-- /.blog-main -->

        <div class="col-sm-3 col-sm-offset-1 blog-sidebar">
            <div class="sidebar-module">
                <h4>Navigation</h4>
                <ol class="list-unstyled">
                    <li><a href="#">Spring</a></li>
                    <li><a href="#">VueJs</a></li>
                    <li><a href="#">Docker</a></li>
                    <li><a href="#">Gradle</a></li>
                    <li><a href="#">Java</a></li>
                    <li><a href="#">Clojure</a></li>
                </ol>
            </div>
          <#include "about.ftl">
          <div class="sidebar-module">
            <h4>Archives</h4>
            <ol class="list-unstyled">
              <li><a href="#">March 2014</a></li>
              <li><a href="#">February 2014</a></li>
              <li><a href="#">January 2014</a></li>
              <li><a href="#">December 2013</a></li>
              <li><a href="#">November 2013</a></li>
              <li><a href="#">October 2013</a></li>
              <li><a href="#">September 2013</a></li>
              <li><a href="#">August 2013</a></li>
              <li><a href="#">July 2013</a></li>
              <li><a href="#">June 2013</a></li>
              <li><a href="#">May 2013</a></li>
              <li><a href="#">April 2013</a></li>
            </ol>
          </div>
          <div class="sidebar-module">
            <h4>Elsewhere</h4>
            <ol class="list-unstyled">
              <li><a href="#">GitHub</a></li>
              <li><a href="#">Twitter</a></li>
              <li><a href="#">Facebook</a></li>
            </ol>
          </div>
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->