package com.ithome.web.start.Beans;


    public class SoundInsulationAndVibrationIsolation extends BeanHelper {

        private String SoundInsulationAndVibrationIsolationEng;
        private String SoundInsulationAndVibrationIsolationRus;

        public SoundInsulationAndVibrationIsolation() {
        }

        public SoundInsulationAndVibrationIsolation(int id, String soundInsulationAndVibrationIsolationEng, String soundInsulationAndVibrationIsolationRus) {
            super(id);
            SoundInsulationAndVibrationIsolationEng = soundInsulationAndVibrationIsolationEng;
            SoundInsulationAndVibrationIsolationRus = soundInsulationAndVibrationIsolationRus;
        }

        public SoundInsulationAndVibrationIsolation(String soundInsulationAndVibrationIsolationEng, String soundInsulationAndVibrationIsolationRus) {
            SoundInsulationAndVibrationIsolationEng = soundInsulationAndVibrationIsolationEng;
            SoundInsulationAndVibrationIsolationRus = soundInsulationAndVibrationIsolationRus;
        }

        public String getSoundInsulationAndVibrationIsolationEng() {
            return SoundInsulationAndVibrationIsolationEng;
        }

        public void setSoundInsulationAndVibrationIsolationEng(String soundInsulationAndVibrationIsolationEng) {
            SoundInsulationAndVibrationIsolationEng = soundInsulationAndVibrationIsolationEng;
        }

        public String getSoundInsulationAndVibrationIsolationRus() {
            return SoundInsulationAndVibrationIsolationRus;
        }

        public void setSoundInsulationAndVibrationIsolationRus(String soundInsulationAndVibrationIsolationRus) {
            SoundInsulationAndVibrationIsolationRus = soundInsulationAndVibrationIsolationRus;
        }
    }
