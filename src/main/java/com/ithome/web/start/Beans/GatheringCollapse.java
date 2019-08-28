package com.ithome.web.start.Beans;

public class GatheringCollapse extends BeanHelper {

    private String GatheringCollapseEng;
    private String GatheringCollapseRus;

    public GatheringCollapse(int id, String gatheringCollapseEng, String gatheringCollapseRus) {
        super(id);
        GatheringCollapseEng = gatheringCollapseEng;
        GatheringCollapseRus = gatheringCollapseRus;
    }

    public GatheringCollapse(String gatheringCollapseEng, String gatheringCollapseRus) {
        GatheringCollapseEng = gatheringCollapseEng;
        GatheringCollapseRus = gatheringCollapseRus;
    }

    public GatheringCollapse() {
    }

    public String getGatheringCollapseEng() {
        return GatheringCollapseEng;
    }

    public void setGatheringCollapseEng(String gatheringCollapseEng) {
        GatheringCollapseEng = gatheringCollapseEng;
    }

    public String getGatheringCollapseRus() {
        return GatheringCollapseRus;
    }

    public void setGatheringCollapseRus(String gatheringCollapseRus) {
        GatheringCollapseRus = gatheringCollapseRus;
    }
}
