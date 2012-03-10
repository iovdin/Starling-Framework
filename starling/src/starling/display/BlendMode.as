package starling.display{
    import flash.display3D.Context3DBlendFactor;

    public class BlendMode {

        public static const ADD        : BlendMode = new BlendMode( 
                Context3DBlendFactor.ONE, 
                Context3DBlendFactor.ONE);

        public static const NORMAL     : BlendMode = new BlendMode(
                Context3DBlendFactor.SOURCE_ALPHA, 
                Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);

        //do not use directly
        public static const NORMAL_PREMULTIPLIED : BlendMode = new BlendMode(
                Context3DBlendFactor.ONE, 
                Context3DBlendFactor.ONE_MINUS_SOURCE_ALPHA);

        public static const INVERT     : BlendMode = new BlendMode(
                Context3DBlendFactor.ONE_MINUS_DESTINATION_COLOR, 
                Context3DBlendFactor.ZERO);

        public static const MULTIPLY   : BlendMode = new BlendMode(
                Context3DBlendFactor.DESTINATION_COLOR, 
                Context3DBlendFactor.ZERO);


        public static const SCREEN     : BlendMode = new BlendMode(
                Context3DBlendFactor.ONE, 
                Context3DBlendFactor.ONE_MINUS_SOURCE_COLOR);

        public var src : String;
        public var dst : String;

        public function BlendMode(src : String, dst : String){
            this.src = src;
            this.dst = dst;
        }
    }
}
