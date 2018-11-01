<section class="page_section team" id="team"><!--main-section team-start-->
    <div class="container">
        <h2>Books</h2>
        @if(isset($page))

        @foreach($page as $pages)
            <div class="team_area">
                <div class="team_box wow ">
                   {!! Html::image('img/'.$pages->Image) !!}
                </div>
               <div id="disk"> <h3 class="wow ">{{ $pages['Title'] }}</h3> </div>
                <span class="wow ">{{ $pages['Author'] }}</span>
                <p class="wow ">Pages number: {{ $pages['Pages'] }}</p>
                <p class="wow grid-width-200 ">{{ $pages['Disc'] }}</p>

            </div>
            @endforeach
        @endif


    </div>
</section>
<div class="pagination">
    <a href="add" ><button type="button" class="btn  btn-primary">Add your book</button></a>
    {{ $page->links() }}
    </div>
