package com.ithome.web.start.Beans;


    public class BodyKit extends BeanHelper {

        private String BodyKitEng;
        private String BodyKitRus;

        public BodyKit() {
        }

        public BodyKit(int id, String bodyKitEng, String bodyKitRus) {
            super(id);
            BodyKitEng = bodyKitEng;
            BodyKitRus = bodyKitRus;
        }

        public BodyKit(String bodyKitEng, String bodyKitRus) {
            BodyKitEng = bodyKitEng;
            BodyKitRus = bodyKitRus;
        }

        public String getBodyKitEng() {
            return BodyKitEng;
        }

        public void setBodyKitEng(String bodyKitEng) {
            BodyKitEng = bodyKitEng;
        }

        public String getBodyKitRus() {
            return BodyKitRus;
        }

        public void setBodyKitRus(String bodyKitRus) {
            BodyKitRus = bodyKitRus;
        }
    }
