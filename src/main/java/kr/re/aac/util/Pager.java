package kr.re.aac.util;

public class Pager {
    private int pageNo;
    private int totalCount;

    private boolean hasPrev;
    private boolean hasNext;

    private int firstPageNo;
    private int lastPageNo;

    private int exposureCount;	// 컨텐츠 노출 갯수
    private int pagingCount;		// 페이징 범위 ex) 1 2 3 4 5 -> 5개

    public Pager(int pageNo, int totalCount) {
        this(pageNo, totalCount, 10, 10);
    }

    public Pager(int pageNo, int totalCount, int exposureCount) {
        this(pageNo, totalCount, exposureCount, 10);
    }

    public Pager(int pageNo, int totalCount, int exposureCount, int pagingCount) {
        if(pageNo < 1) {
            pageNo = 1;
        }

        this.pageNo = pageNo;
        this.totalCount = totalCount;
        this.pagingCount = pagingCount;
        this.exposureCount = exposureCount;

        makeFirstNo();
        makeLastPageNo();
    }

    private void makeFirstNo() {
        firstPageNo = (int) Math.ceil(pageNo/(double) pagingCount) * pagingCount - (pagingCount -1);
        lastPageNo = firstPageNo + (pagingCount -1);
        if(firstPageNo > 1) hasPrev = true;
    }

    private void makeLastPageNo() {
        int temp = (int) Math.ceil(totalCount/(double) exposureCount);
        if(temp < lastPageNo) lastPageNo = temp;
        if(temp > lastPageNo) hasNext = true;
    }

    public int getStartRow() {
        return (pageNo - 1) * exposureCount;
    }

    public int getEndRow() {
        return exposureCount;
    }

    public int getPageNo() {
        return pageNo;
    }

    public boolean isHasPrev() {
        return hasPrev;
    }

    public boolean isHasNext() {
        return hasNext;
    }

    public int getFirstPageNo() {
        return firstPageNo;
    }

    public int getLastPageNo() {
        return lastPageNo;
    }
    
    public int getTotalCount() {
		return totalCount;
	}
    
    public int getExposureCount() {
		return exposureCount;
	}
}
