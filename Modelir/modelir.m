function varargout = modelir(varargin)
% MODELIR M-file for modelir.fig
%      MODELIR, by itself, creates a new MODELIR or raises the existing
%      singleton*.
%
%      H = MODELIR returns the handle to a new MODELIR or the handle to
%      the existing singleton*.
%
%      MODELIR('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MODELIR.M with the given input arguments.
%
%      MODELIR('Property','Value',...) creates a new MODELIR or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before modelir_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to modelir_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help modelir

% Last Modified by GUIDE v2.5 19-May-2021 22:17:21

% Begin initialization code - DO NOT EDIT
global ModMethods;
global Q;
global Qstatus;
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @modelir_OpeningFcn, ...
                   'gui_OutputFcn',  @modelir_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin & isstr(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before modelir is made visible.
function modelir_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to modelir (see VARARGIN)

% Choose default command line output for modelir
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes modelir wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = modelir_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in popupmenu2.
function popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu2


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in uku_a.
function uku_a_Callback(hObject, eventdata, handles)
% hObject    handle to uku_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of uku_a


% --- Executes on button press in uku.
function uku_Callback(hObject, eventdata, handles)
% hObject    handle to uku (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of uku


% --- Executes on button press in nash_s.
function nash_s_Callback(hObject, eventdata, handles)
% hObject    handle to nash_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of nash_s


% --- Executes on button press in nash_a.
function nash_a_Callback(hObject, eventdata, handles)
% hObject    handle to nash_a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of nash_a


% --- Executes on button press in par_s.
function par_s_Callback(hObject, eventdata, handles)
% hObject    handle to par_s (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of par_s


% --- Executes on button press in nash_t.
function nash_t_Callback(hObject, eventdata, handles)
% hObject    handle to nash_t (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of nash_t


% --- Executes on button press in shepli.
function shepli_Callback(hObject, eventdata, handles)
% hObject    handle to shepli (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of shepli


% --- Executes on button press in stek1.
function stek1_Callback(hObject, eventdata, handles)
% hObject    handle to stek1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of stek1


% --- Executes on button press in stek5.
function stek5_Callback(hObject, eventdata, handles)
% hObject    handle to stek5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of stek5


% --- Executes on button press in stek7.
function stek7_Callback(hObject, eventdata, handles)
% hObject    handle to stek7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of stek7


% --- Executes during object creation, after setting all properties.
function dx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function dx_Callback(hObject, eventdata, handles)
% hObject    handle to dx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of dx as text
%        str2double(get(hObject,'String')) returns contents of dx as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double

function rdb_CrtFunction(hObject, eventdata, handles);
global ModMethods;
rdb_name=get(hObject, 'Tag');
rdb_str=get(hObject, 'String');
file_name=strcat('momdis/data_', rdb_name, '.mat');
if exist(file_name, 'file')~=0
    exist(file_name, 'file');
    load(strcat('momdis/data_', rdb_name));
    s=size(Data0.Q);
    if s(1)==1
        set(hObject, 'Enable', 'on');
        ModMethods=char(ModMethods, rdb_name);
    else
        set(hObject, 'Enable', 'off');
    end;
else
    set(hObject, 'Enable', 'off');
end;
    

function chkb_CrtFunction(hObject, eventdata, handles);
base=get(hObject, 'Position');
xbase=base(1);
ybase=base(2);
width=base(3);
height=base(4);
load('momdis/data_x0');
s=size(x0);
i=0;
for i=2:s(2)
    uicontrol('Style', 'checkbox', 'Units', 'characters', 'Position', [xbase+(width+0.5)*fix((i-1)/7), ybase-(height+0.5)*mod(i-1,7), width, height], 'Tag', strcat('X',num2str(i)), 'String', strcat('X',num2str(i)), 'Value', 1)
end;

function chkb_DltFunction(hObject, eventdata, handles);
load('momdis/data_x0');
s=size(x0);
i=0;
for i=2:s(2)
    h=findobj('Tag', strcat('X', num2str(i)));
    delete(h);
end;


function rdb_Callback(hObject, eventdata, handles);
global ModMethods;
global Qstatus;
count=size(ModMethods);
i=0;
for i=2:count(1)
    h=findobj('Tag', deblank(ModMethods(i,:)));
    set(h,'Value',0);
end;
set(hObject, 'Value', 1);
load(strcat('momdis/data_',get(hObject, 'Tag')));
set(findobj('Tag', 'selfQ'), 'String', strcat('q=', mat2str(Data0.Q), ';'));


% --- Executes on button press in modelstart.
function modelstart_Callback(hObject, eventdata, handles)
% hObject    handle to modelstart (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
load('momdis/data_flag_nd');
eval(get(findobj('Tag', 'selfQ'), 'String'));
eval(get(findobj('Tag', 'nu'), 'String'));
eval(get(findobj('Tag', 'tint'), 'String'));
eval(get(findobj('Tag', 'Tk'), 'String'));
eval(get(findobj('Tag', 'ni'), 'String'));
if flag_nd==0;
    eps=zeros(1,size(x0,2))+1e-4;
    options=odeset('RelTol',1e-4,'AbsTol',eps,'maxstep',(T-t0)/Ni);
    mm=get(findobj('Tag', 'method'), 'String');
    m=char(deblank(mm(get(findobj('Tag', 'method'), 'Value'),:)));
    [t,x]=feval(m,@mat_mod,[t0 T],x0,options,q);
    J=mat_fun([t,x], q, 0);
    s=size(x0);
    plotX=[];
    lgd=[];
    i=0;
    for i=1:s(2)
        h=findobj('Tag', strcat('X', num2str(i)));
        if get(h(1), 'Value')==1
            plotX=[plotX, x(:,i)];
            lgd=char(lgd, strcat('X', num2str(i)));
        end;
    end;
    plot(t, plotX);
    grid on;
    legend(lgd(2:end,:));
    save 'data_x_model.mat' t x;
end;
if flag_nd==1;
    x=x0;
    X1=x;
    for i=1:Nt;
        xx=mat_mod(0,X1,q);
        X1=xx;
        x=[x; xx];
    end;
    s=size(x0);
    plotX=[];
    lgd=[];
    i=0;
    for i=1:s(2)
        h=findobj('Tag', strcat('X', num2str(i)));
        if get(h(1), 'Value')==1
            plotX=[plotX, x(:,i)];
            lgd=char(lgd, strcat('X', num2str(i)));
        end;
    end;
    plot(0:Nt, plotX);
    grid on;
    legend(lgd(2:end,:));
    takt=[0:Nt];
    J=mat_fun([takt, x'], q, 0);
    save 'data_x_model.mat' takt x;
    
end;
set(findobj('Tag', 'pokaz'), 'String', strcat('J=', mat2str(J), ';'));

% --- Executes on button press in X1.
function X1_Callback(hObject, eventdata, handles)
% hObject    handle to X1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of X1


% --- Executes on button press in myself.
function myself_Callback(hObject, eventdata, handles)
% hObject    handle to myself (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global ModMethods;
global Q;
global Qstatus;
count=size(ModMethods);
i=0;
for i=2:count(1)
    h=findobj('Tag', deblank(ModMethods(i,:)));
    set(h,'Value',0);
end;
set(hObject, 'Value', 1);
% Hint: get(hObject,'Value') returns toggle state of myself


% --- Executes during object creation, after setting all properties.
function selfQ_CreateFcn(hObject, eventdata, handles)
% hObject    handle to selfQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end
load('momdis/data_qmm');
set(hObject, 'String', strcat('q=', mat2str(q_min), ';'));


function selfQ_Callback(hObject, eventdata, handles)
% hObject    handle to selfQ (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of selfQ as text
%        str2double(get(hObject,'String')) returns contents of selfQ as a double


% --- Executes during object creation, after setting all properties.
function method_CreateFcn(hObject, eventdata, handles)
% hObject    handle to method (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end


% --- Executes on selection change in method.
function method_Callback(hObject, eventdata, handles)
% hObject    handle to method (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns method contents as cell array
%        contents{get(hObject,'Value')} returns selected item from method


% --- Executes during object creation, after setting all properties.
function nu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end
load('momdis/data_x0');
set(hObject, 'String', strcat('x0=', deblank(mat2str(x0)), ';'));



function nu_Callback(hObject, eventdata, handles)
% hObject    handle to nu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nu as text
%        str2double(get(hObject,'String')) returns contents of nu as a double


% --- Executes during object creation, after setting all properties.
function tint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end
load('momdis/data_flag_nd');
if flag_nd==0
    load('momdis/data_Tint');
    set(hObject, 'String', strcat('t0=', num2str(t0),';'));
    set(findobj('Tag', 'Tk'), 'String', strcat('T=', num2str(T), ';'));
    set(findobj('Tag', 'text12'), 'String', char('Интервал интегрирования', '[t0, T]'));
    set(findobj('Tag', 'Tk'), 'Visible', 'on');
end;
if flag_nd==1
    load('momdis/data_Nt');
    set(hObject, 'String', strcat('Nt=', num2str(Nt), ';'));
    set(findobj('Tag', 'text12'), 'String', 'Число тактов вычисления');
    set(findobj('Tag', 'Tk'), 'Visible', 'off');
end;



function tint_Callback(hObject, eventdata, handles)
% hObject    handle to tint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of tint as text
%        str2double(get(hObject,'String')) returns contents of tint as a double


% --- Executes during object creation, after setting all properties.
function Tk_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end



function Tk_Callback(hObject, eventdata, handles)
% hObject    handle to Tk (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tk as text
%        str2double(get(hObject,'String')) returns contents of Tk as a double


% --- Executes during object creation, after setting all properties.
function ni_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end
set(hObject, 'String', 'Ni=1000;');


function ni_Callback(hObject, eventdata, handles)
% hObject    handle to ni (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ni as text
%        str2double(get(hObject,'String')) returns contents of ni as a double

function pokaz_dltfun(hObject, eventdata, handles)
set(hObject, 'String', '');


% --- Executes on button press in getparopt2d.
function getparopt2d_Callback(hObject, eventdata, handles)
% hObject    handle to getparopt2d (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of getparopt2d
