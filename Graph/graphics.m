function varargout = graphics(varargin)
% GRAPHICS M-file for graphics.fig
%      GRAPHICS, by itself, creates a new GRAPHICS or raises the existing
%      singleton*.
%
%      H = GRAPHICS returns the handle to a new GRAPHICS or the handle to
%      the existing singleton*.
%
%      GRAPHICS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAPHICS.M with the given input arguments.
%
%      GRAPHICS('Property','Value',...) creates a new GRAPHICS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before graphics_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to graphics_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help graphics

% Last Modified by GUIDE v2.5 19-Feb-2006 02:11:49

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @graphics_OpeningFcn, ...
                   'gui_OutputFcn',  @graphics_OutputFcn, ...
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
end

% --- Executes just before graphics is made visible.
function graphics_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to graphics (see VARARGIN)

% Choose default command line output for graphics
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes graphics wait for user response (see UIRESUME)
% uiwait(handles.figure1);
end

% --- Outputs from this function are returned to the command line.
function varargout = graphics_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;
end

% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
%axes(handles.axes1);
cla;
        plot(rand(5));
        hold on;
        plot(1,6);
  
end


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
end


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double
end

% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

end

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double

end
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

end

function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double
end

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

end

function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double
end

% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

end

function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double
end

% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc
    set(hObject,'BackgroundColor','white');
else
    set(hObject,'BackgroundColor',get(0,'defaultUicontrolBackgroundColor'));
end

end

function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double
end

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --- Executes on button press in pushbutton6.
function pushbutton6_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

% --- Executes on button press in GrSlRaReOn.
function saveinfile_2_Callback(hObject, eventdata, handles)
% hObject    handle to Без_названия_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end

function otslegivanie_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to otslegivanie (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
end



function GrSlRaReOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrSlRaReOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSlRaReOn
set(handles.GrSlRaReOn, 'Value', 1);
set(handles.GrSlRaReOff, 'Value', 0);
end

% --- Executes on button press in GrSlRaReOff.
function GrSlRaReOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrSlRaReOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSlRaReOff
set(handles.GrSlRaReOn, 'Value', 0);
set(handles.GrSlRaReOff, 'Value', 1);
end
% --------------------------------------------------------------------


% --- Executes on button press in GrObPokOff.
function GrObPokOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrObPokOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrObPokOff
set(handles.GrObPokOff, 'Value', 1);
set(handles.GrObPokOn, 'Value', 0);
end

% --- Executes on button press in GrObPokOn.
function GrObPokOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrObPokOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrObPokOn
set(handles.GrObPokOff, 'Value', 0);
set(handles.GrObPokOn, 'Value', 1);
end

% --- Executes on button press in GrSiRaReOff.
function GrSiRaReOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrSiRaReOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSiRaReOff
set(handles.GrSiRaReOff, 'Value', 1);
set(handles.GrSiRaReOn, 'Value', 0);
end

% --- Executes on button press in GrSiRaReOn.
function GrSiRaReOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrSiRaReOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSiRaReOn
set(handles.GrSiRaReOff, 'Value', 0);
set(handles.GrSiRaReOn, 'Value', 1);
end

% --- Executes on button press in GrUKUsOff.
function GrUKUsOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrUKUsOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrUKUsOff
set(handles.GrUKUsOff, 'Value', 1);
set(handles.GrUKUsOn, 'Value', 0);
end

% --- Executes on button press in radiobutton8.


%%function radiobutton8_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton8


% --- Executes on button press in GrNEWsOff.
function GrNEWsOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrNEWsOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrNEWsOff
set(handles.GrNEWsOff, 'Value', 1);
set(handles.GrNEWsOn, 'Value', 0);
end

% --- Executes on button press in GrNEWsOn.
function GrNEWsOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrNEWsOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrNEWsOn
set(handles.GrNEWsOff, 'Value', 0);
set(handles.GrNEWsOn, 'Value', 1);
end

% --- Executes on button press in GrParetsOff.
function GrParetsOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrParetsOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrParetsOff
set(handles.GrParetsOff, 'Value', 1);
set(handles.GrParetsOn, 'Value', 0);
end

% --- Executes on button press in GrParetsOn.
function GrParetsOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrParetsOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrParetsOn
set(handles.GrParetsOff, 'Value', 0);
set(handles.GrParetsOn, 'Value', 1);
end

% --- Executes on button press in GrUKUtOff.
function GrUKUtOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrUKUtOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrUKUtOff
set(handles.GrUKUtOff, 'Value', 1);
set(handles.GrUKUtOn, 'Value', 0);
end

% --- Executes on button press in GrUKUtOn.
function GrUKUtOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrUKUtOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrUKUtOn
set(handles.GrUKUtOff, 'Value', 0);
set(handles.GrUKUtOn, 'Value', 1);
end

% --- Executes on button press in GrNEWtOff.
function GrNEWtOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrNEWtOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrNEWtOff
set(handles.GrNEWtOff, 'Value', 1);
set(handles.GrNEWtOn, 'Value', 0);
end

% --- Executes on button press in GrNEWtOn.
function GrNEWtOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrNEWtOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrNEWtOn
set(handles.GrNEWtOff, 'Value', 0);
set(handles.GrNEWtOn, 'Value', 1);
end

% --- Executes on button press in GrParettOff.
function GrParettOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrParettOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrParettOff
set(handles.GrParettOff, 'Value', 1);
set(handles.GrParettOn, 'Value', 0);
end

% --- Executes on button press in GrParettOn.
function GrParettOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrParettOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrParettOn
set(handles.GrParettOff, 'Value', 0);
set(handles.GrParettOn, 'Value', 1);
end

% --- Executes on button press in GrWepliOff.
function GrWepliOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrWepliOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrWepliOff
set(handles.GrWepliOff, 'Value', 1);
set(handles.GrWepliOn, 'Value', 0);
end

% --- Executes on button press in GrWepliOn.
function GrWepliOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrWepliOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrWepliOn
set(handles.GrWepliOff, 'Value', 0);
set(handles.GrWepliOn, 'Value', 1);
end

% --- Executes on button press in GrOmegaOff.
function GrOmegaOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrOmegaOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrOmegaOff
set(handles.GrOmegaOff, 'Value', 1);
set(handles.GrOmegaOn, 'Value', 0);
end

% --- Executes on button press in GrOmegaOn.
function GrOmegaOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrOmegaOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrOmegaOn
set(handles.GrOmegaOff, 'Value', 0);
set(handles.GrOmegaOn, 'Value', 1);
end

% --- Executes on button press in GrSTEK1Off.
function GrSTEK1Off_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK1Off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK1Off
set(handles.GrSTEK1Off, 'Value', 1);
set(handles.GrSTEK1On, 'Value', 0);
end

% --- Executes on button press in GrSTEK1On.
function GrSTEK1On_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK1On (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK1On
set(handles.GrSTEK1Off, 'Value', 0);
set(handles.GrSTEK1On, 'Value', 1);
end

% --- Executes on button press in GrSTEK2Off.
function GrSTEK2Off_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK2Off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK2Off
set(handles.GrSTEK2Off, 'Value', 1);
set(handles.GrSTEK2On, 'Value', 0);
end

% --- Executes on button press in GrSTEK2On.
function GrSTEK2On_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK2On (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK2On
set(handles.GrSTEK2Off, 'Value', 0);
set(handles.GrSTEK2On, 'Value', 1);
end

% --- Executes on button press in GrSTEK3Off.
function GrSTEK3Off_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK3Off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK3Off
set(handles.GrSTEK3Off, 'Value', 1);
set(handles.GrSTEK3On, 'Value', 0);
end

% --- Executes on button press in GrSTEK3On.
function GrSTEK3On_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK3On (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK3On
set(handles.GrSTEK3Off, 'Value', 0);
set(handles.GrSTEK3On, 'Value', 1);
end

% --- Executes on button press in GrSTEK4Off.
function GrSTEK4Off_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK4Off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK4Off
set(handles.GrSTEK4Off, 'Value', 1);
set(handles.GrSTEK4On, 'Value', 0);
end

% --- Executes on button press in GrSTEK4On.
function GrSTEK4On_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK4On (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK4On
set(handles.GrSTEK4Off, 'Value', 0);
set(handles.GrSTEK4On, 'Value', 1);
end

% --- Executes on button press in GrSTEK5Off.
function GrSTEK5Off_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK5Off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK5Off
set(handles.GrSTEK5Off, 'Value', 1);
set(handles.GrSTEK5On, 'Value', 0);
end

% --- Executes on button press in GrSTEK5On.
function GrSTEK5On_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK5On (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK5On
set(handles.GrSTEK5Off, 'Value', 0);
set(handles.GrSTEK5On, 'Value', 1);
end

% --- Executes on button press in GrSTEK6Off.
function GrSTEK6Off_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK6Off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK6Off
set(handles.GrSTEK6Off, 'Value', 1);
set(handles.GrSTEK6On, 'Value', 0);
end

% --- Executes on button press in GrSTEK6On.
function GrSTEK6On_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK6On (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK6On
set(handles.GrSTEK6Off, 'Value', 0);
set(handles.GrSTEK6On, 'Value', 1);
end

% --- Executes on button press in GrSTEK7Off.
function GrSTEK7Off_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK7Off (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK7Off
set(handles.GrSTEK7Off, 'Value', 1);
set(handles.GrSTEK7On, 'Value', 0);
end

% --- Executes on button press in GrSTEK7On.
function GrSTEK7On_Callback(hObject, eventdata, handles)
% hObject    handle to GrSTEK7On (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrSTEK7On
set(handles.GrSTEK7Off, 'Value', 0);
set(handles.GrSTEK7On, 'Value', 1);
end

% --- Executes on button press in GrUKUsOn.
function GrUKUsOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrUKUsOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrUKUsOn
set(handles.GrUKUsOn, 'Value', 1);
set(handles.GrUKUsOff, 'Value', 0);
end
% --- Executes on button press in GrObPokOff.


%%function GrObPokOnn_Callback(hObject, eventdata, handles)
% hObject    handle to GrObPokOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrObPokOff


% --- Executes on button press in GrUKUksOff.
function GrUKUksOff_Callback(hObject, eventdata, handles)
% hObject    handle to GrUKUksOff (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrUKUksOff
end

% --- Executes on button press in radiobutton40.
function radiobutton40_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton40
end

% --- Executes on button press in GrUKUksOn.
function GrUKUksOn_Callback(hObject, eventdata, handles)
% hObject    handle to GrUKUksOn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of GrUKUksOn
end


