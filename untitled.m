function varargout = untitled(varargin)
% UNTITLED MATLAB code for untitled.fig
%      UNTITLED, by itself, creates a new UNTITLED or raises the existing
%      singleton*.
%
%      H = UNTITLED returns the handle to a new UNTITLED or the handle to
%      the existing singleton*.
%
%      UNTITLED('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in UNTITLED.M with the given input arguments.
%
%      UNTITLED('Property','Value',...) creates a new UNTITLED or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before untitled_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to untitled_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help untitled

% Last Modified by GUIDE v2.5 03-Jan-2020 13:49:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @untitled_OpeningFcn, ...
                   'gui_OutputFcn',  @untitled_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before untitled is made visible.
function untitled_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to untitled (see VARARGIN)

% Choose default command line output for untitled
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes untitled wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = untitled_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Q1 = str2double(get(handles.text3, 'String'))
Q2 = str2double(get(handles.text4, 'String'))
Q3 = str2double(get(handles.text5, 'String'))
Q4 = str2double(get(handles.text6, 'String'))
Q5 = str2double(get(handles.text7, 'String'))
Q6 = str2double(get(handles.text8, 'String'))

T0_1=[cos(Q1)  -sin(Q1) 0   50 ;
        0         0    -1  -815 ;
      sin(Q1)   cos(Q1) 0    0  ; 
        0         0     0    1]
   
T1_2=[cos(Q2)  -sin(Q2) 0   850 ;
      sin(Q2)   cos(Q2) 0    0 ;
        0         0     1    0  ;
        0         0     0    1];
   
T2_3=[cos(Q3)  -sin(Q3) 0   145;  
        0         0    -1    0 ;
      sin(Q3)   cos(Q3) 0    0 ;   
        0         0     0    1]
   
T3_4=[cos(Q4)  -sin(Q4) 0    0;  
        0         0     1    820 ;
      -sin(Q4) -cos(Q4) 0    0;  
        0         0     0    1]
    
T4_5=[cos(Q5)  -sin(Q5) 0    0 ;
        0         0    -1    0 ;
      sin(Q5) cos(Q5)   0    0 ;
        0         0     0    1]
   
T5_6=[cos(Q6)  -sin(Q6) 0    0 ;
      sin(Q6)   cos(Q6) 0    0 ;
       0          0     1    0  ;
       0          0     0    1] 
   
   
   
TR_H=T0_1*T1_2*T2_3*T3_4*T4_5*T5_6
set(handles.edit9, 'Max', 5, 'String', "|"+num2str(TR_H)+"|");


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms Q1 Q2 Q3 Q4 Q5 Q6


T0_1=[cos(Q1)  -sin(Q1) 0   50 ;
        0         0    -1  -815 ;
      sin(Q1)   cos(Q1) 0    0  ; 
        0         0     0    1]
   
T1_2=[cos(Q2)  -sin(Q2) 0   850 ;
      sin(Q2)   cos(Q2) 0    0 ;
        0         0     1    0  ;
        0         0     0    1];
   
T2_3=[cos(Q3)  -sin(Q3) 0   145;  
        0         0    -1    0 ;
      sin(Q3)   cos(Q3) 0    0 ;   
        0         0     0    1];
   
T3_4=[cos(Q4)  -sin(Q4) 0    0;  
        0         0     1    820 ;
      -sin(Q4) -cos(Q4) 0    0;  
        0         0     0    1];
    
T4_5=[cos(Q5)  -sin(Q5) 0    0 ;
        0         0    -1    0 ;
      sin(Q5) cos(Q5)   0    0 ;
        0         0     0    1];
   
T5_6=[cos(Q6)  -sin(Q6) 0    0 ;
      sin(Q6)   cos(Q6) 0    0 ;
       0          0     1    0  ;
       0          0     0    1]  ;
    TR_H=T0_1*T1_2*T2_3*T3_4*T4_5*T5_6;
    A=[0;0;1];
    T06_ja=jacobian(TR_H(1:3,4),[Q1; Q2; Q3; Q4; Q5; Q6])
    Q1 = str2num(get(handles.text3, 'String'))
    Q2 = str2num(get(handles.text4, 'String'))
    Q3 = str2num(get(handles.text5, 'String'))
    Q4 = str2num(get(handles.text6, 'String'))
    Q5 = str2num(get(handles.text7, 'String'))
    Q6 = str2num(get(handles.text8, 'String'))
    T06_ja=subs(T06_ja, {'Q1','Q2','Q3','Q4','Q5','Q6'}, {Q1,Q2,Q3,Q4,Q5,Q6});
    J0_1= T0_1(1:3,1:3)*A;
    J1_2= T1_2(1:3,1:3)*A;
    J2_3= T2_3(1:3,1:3)*A;
    J3_4= T3_4(1:3,1:3)*A;
    J4_5= T4_5(1:3,1:3)*A;
    J5_6= T5_6(1:3,1:3)*A;    
    J0_6=[J0_1 J1_2 J2_3 J3_4 J4_5 J5_6];
    J0_6=subs(J0_6, {'Q1','Q2','Q3','Q4','Q5','Q6'}, {Q1,Q2,Q3,Q4,Q5,Q6});
    J=double([T06_ja;J0_6]) 
set(handles.text34, 'Max', 5, 'String', "|"+num2str(J)+"|");


function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
syms Q1 Q2 Q3 Q4 Q5 Q6  ...
    r11 r12 r13 r21 r22 r23 r31 r32 r33;
   
    px = str2num(get(handles.text9, 'String'))
    py = str2num(get(handles.text10, 'String'))
    pz = str2num(get(handles.text11, 'String'))
  
    alfa=str2num(get(handles.text12, 'String'));
    beta=str2num(get(handles.text13, 'String'));
    gama=str2num(get(handles.text14, 'String'));
    
  T0_1=[cos(Q1)  -sin(Q1) 0   50 ;
        0         0    -1  -815 ;
      sin(Q1)   cos(Q1) 0    0  ; 
        0         0     0    1]
   
T1_2=[cos(Q2)  -sin(Q2) 0   850 ;
      sin(Q2)   cos(Q2) 0    0 ;
        0         0     1    0  ;
        0         0     0    1];
   
T2_3=[cos(Q3)  -sin(Q3) 0   145;  
        0         0    -1    0 ;
      sin(Q3)   cos(Q3) 0    0 ;   
        0         0     0    1];
   
T3_4=[cos(Q4)  -sin(Q4) 0    0;  
        0         0     1    820 ;
      -sin(Q4) -cos(Q4) 0    0;  
        0         0     0    1];
    
T4_5=[cos(Q5)  -sin(Q5) 0    0 ;
        0         0    -1    0 ;
      sin(Q5) cos(Q5)   0    0 ;
        0         0     0    1];
   
T5_6=[cos(Q6)  -sin(Q6) 0    0 ;
      sin(Q6)   cos(Q6) 0    0 ;
       0          0     1    0  ;
       0          0     0    1]  ;

       

T1_6 = T1_2*T2_3*T3_4*T4_5*T5_6
T1_6 = simplify(T1_6)
T2_6 = T2_3*T3_4*T4_5*T5_6
T2_6 = simplify(T2_6)
T0_6s = [ r11 r12 r13 px;   r21 r22 r23 py; ...
          r31 r32 r33 pz;   0 0 0 1];
T_e1 = inv(T0_1)*T0_6s
T_e2 = inv(T1_2)*T_e1


e1 = simplify(T1_6(1,4)-T_e1(1,4))
e2 = simplify(T1_6(2,4)-T_e1(2,4))
e3 = simplify(T1_6(3,4)-T_e1(3,4))
e4 = simplify(T2_6(1,4)-T_e2(1,4))
e5 = simplify(T2_6(2,4)-T_e2(2,4))
e6 = simplify(T2_6(3,4)-T_e2(3,4))

Q3=(solve(e6,Q3))
e11= subs(e1,{'Q3'},{Q3})
e22= subs(e2,{'Q3'},{Q3})
[Q1, Q2] = solve(e22, Q1, Q2)
Q1=double(abs(Q1)*180/pi)
Q2=double(abs(Q2)*180/pi)
Q3=double(abs(Q3)*180/pi)


RX_Z=[ cos(alfa)*cos(beta) cos(alfa)*sin(beta)*sin(gama)-sin(alfa)*cos(gama) cos(alfa)*sin(beta)*cos(gama)+sin(alfa)*sin(gama); ...
       sin(alfa)*cos(beta) sin(alfa)*sin(beta)*sin(gama)+cos(alfa)*cos(gama) sin(alfa)*sin(beta)*cos(gama)-cos(alfa)*sin(gama); ...
       -sin(beta) cos(beta)*sin(gama) cos(beta)*cos(gama)]
 
R0_6 =T4_5(1:3,1:3)*T5_6(1:3,1:3)
R0_4=T0_1(1:3,1:3)*T1_2(1:3,1:3)*T2_3(1:3,1:3)*T3_4(1:3,1:3)
R1_6 = simplify(R0_6)
R_e4=inv(R0_4)*RX_Z
R_e4=simplify(R_e4)
R_e1 = simplify(R1_6(1,3)-R_e4(1,3))
R_e2 = simplify(R1_6(1,2)-R_e4(1,2))
R_e3 = simplify(R1_6(2,1)-R_e4(2,1))
% 
 Q4=angle(abs(solve(R_e1,Q4)))
% 
  R_e22= subs(R_e2,{'Q4'},{Q4})
 
% %
 [Q5, Q6] = solve(R_e22, Q5, Q6)


Q4=double(abs(Q4)*180/pi);
 Q5=subs(Q5,{'Q3'},{Q3});
 Q5=double(abs(Q5)*180/pi)/360
 Q6=double(abs(Q6)*180/pi)

   set(handles.edit15, 'Max', 5, 'String',num2str(Q1))
   set(handles.edit16, 'Max', 5, 'String',num2str(Q2))
   set(handles.edit17, 'Max', 5, 'String',num2str(Q3))
   set(handles.edit18, 'Max', 5, 'String',num2str(Q4))
   set(handles.edit19, 'Max', 5, 'String',num2str(Q5))
   set(handles.edit20, 'Max', 5, 'String',num2str(Q6))
  



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
