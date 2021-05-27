function varargout = VyborTipJsirare(varargin)

% VYBORTIPJSIRARE M-file for VyborTipJsirare.fig
%      VYBORTIPJSIRARE, by itself, creates a new VYBORTIPJSIRARE or raises the existing
%      singleton*.
%
%      H = VYBORTIPJSIRARE returns the handle to a new VYBORTIPJSIRARE or the handle to
%      the existing singleton*.
%
%      VYBORTIPJSIRARE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VYBORTIPJSIRARE.M with the given input arguments.
%
%      VYBORTIPJSIRARE('Property','Value',...) creates a new VYBORTIPJSIRARE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VyborTipJsirare_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VyborTipJsirare_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VyborTipJsirare

% Last Modified by GUIDE v2.5 20-May-2010 19:40:34

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VyborTipJsirare_OpeningFcn, ...
                   'gui_OutputFcn',  @VyborTipJsirare_OutputFcn, ...
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


% --- Executes just before VyborTipJsirare is made visible.
function VyborTipJsirare_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VyborTipJsirare (see VARARGIN)

% Choose default command line output for VyborTipJsirare
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VyborTipJsirare wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VyborTipJsirare_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in siraresimetr.
function siraresimetr_Callback(hObject, eventdata, handles)
% hObject    handle to siraresimetr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close; 
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_nash_a; 
plot(Data0.J(:,1),Data0.J(:,2),'y*'); 
hold on;
numGrSiRaRe=1;
save data_GrSiRaRe numGrSiRaRe;
% Hint: get(hObject,'Value') returns toggle state of siraresimetr

% --- Executes on button press in sirareJ1.
function sirareJ1_Callback(hObject, eventdata, handles)
% hObject    handle to sirareJ1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close; 
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_nash_a; 
plot(Data1.J(:,1),Data1.J(:,2),'y.'); 
hold on;
numGrSiRaRe=2;
save data_GrSiRaRe numGrSiRaRe;
% Hint: get(hObject,'Value') returns toggle state of sirareJ1

% --- Executes on button press in stsirare.
function stsirare_Callback(hObject, eventdata, handles)
% hObject    handle to stsirare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in sirareJ2.
function sirareJ2_Callback(hObject, eventdata, handles)
% hObject    handle to sirareJ2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close; 
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_nash_a; 
plot(Data2.J(:,1),Data2.J(:,2),'yo');
hold on;
numGrSiRaRe=3;
save data_GrSiRaRe numGrSiRaRe;
% Hint: get(hObject,'Value') returns toggle state of sirareJ2


