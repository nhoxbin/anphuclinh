
@if ($paginator->hasPages())
    <ul class="pagination">
        @if ($paginator->onFirstPage())
            <li class="disabled"><span>Trước</span></li>
        @else
            <li><a href="{{ $paginator->previousPageUrl() }}" rel="prev">Trước</a></li>
        @endif


        @if ($paginator->hasMorePages())
            <li><a href="{{ $paginator->nextPageUrl() }}" rel="next">Sau</a></li>
        @else
            <li class="disabled"><span>Sau</span></li>
        @endif
    </ul>
@endif