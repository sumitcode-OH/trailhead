public class Demo2{

    String helloString;
    private static final String DEFAULT_STRING;

    static{
        DEFAULT_STRING = 'Hello World';
    }

    public Demo2(){
		this(DEFAULT_STRING);
	}

    public Demo2(String stringToDisplay){
        this.helloString = stringToDisplay;
    }

    public void printToDisplay(){
        System.debug('Display: ' + this.helloString );
    }


}