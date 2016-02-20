with Gcode; use Gcode;

package Stepper is
   function Execute_Step_Event return Boolean;

   type Set_Step_Pin_Proc is access procedure (Axis : Axis_Name);
   type Clear_Step_Pin_Proc is access procedure (Axis : Axis_Name);
   type Set_Direction_Pin_Proc is access procedure (Axis : Axis_Name;
                                                    Dir : Direction);

   procedure Set_Stepper_Callbacks (Set_Step       : Set_Step_Pin_Proc;
                                    Clear_Step     : Clear_Step_Pin_Proc;
                                    Set_Direcetion : Set_Direction_Pin_Proc);
end Stepper;
