

uniform float uTime;
uniform float uSize;
attribute float aScale;
varying vec3 vColor;


void main()
        {
            /**
             * position
             */
             vec4 modelPosition = modelMatrix * vec4(position, 1.0);
             //modelPosition.y += uTime;
             vec4 viewPosition = viewMatrix * modelPosition;
             vec4 projectedPosition = projectionMatrix * viewPosition;
             gl_Position = projectedPosition;


             /**
             * size
             */

             gl_PointSize = uSize * aScale;
             gl_PointSize *= ( 1.0 / - viewPosition.z ); // 가까이 있는 것은 크게 먼것은 작게 보여지게 한다.

             //Color

             vColor = color;
        }      