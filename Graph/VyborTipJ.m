function varargout = VyborTipJ(varargin)

% VYBORTIPJ M-file for VyborTipJ.fig
%      VYBORTIPJ, by itself, creates a new VYBORTIPJ or raises the existing
%      singleton*.
%
%      H = VYBORTIPJ returns the handle to a new VYBORTIPJ or the handle to
%      the existing singleton*.
%
%      VYBORTIPJ('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in VYBORTIPJ.M with the given input arguments.
%
%      VYBORTIPJ('Property','Value',...) creates a new VYBORTIPJ or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before VyborTipJ_OpeningFunction gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to VyborTipJ_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help VyborTipJ

% Last Modified by GUIDE v2.5 19-Feb-2006 00:24:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @VyborTipJ_OpeningFcn, ...
                   'gui_OutputFcn',  @VyborTipJ_OutputFcn, ...
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


% --- Executes just before VyborTipJ is made visible.
function VyborTipJ_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to VyborTipJ (see VARARGIN)

% Choose default command line output for VyborTipJ
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes VyborTipJ wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = VyborTipJ_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in newssimetr.
function newssimetr_Callback(hObject, eventdata, handles)
% hObject    handle to newssimetr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
  close; 
  set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
  load data_nash_s;
  plot(Data0.J(:,1),Data0.J(:,2),'m*'); 
  hold on;
  numGrNEWs=1;
  save data_GrNEWs numGrNEWs;
% Hint: get(hObject,'Value') returns toggle state of newssimetr

% --- Executes on button press in newsJ1.
function newsJ1_Callback(hObject, eventdata, handles)
% hObject    handle to newsJ1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close; 
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_nash_s; 
plot(Data1.J(:,1),Data1.J(:,2),'m.'); 
hold on;
numGrNEWs=2;
save data_GrNEWs numGrNEWs;
% Hint: get(hObject,'Value') returns toggle state of newsJ1

% --- Executes on button press in stsirare.
function stsirare_Callback(hObject, eventdata, handles)
% hObject    handle to stsirare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in newsJ2.
function newsJ2_Callback(hObject, eventdata, handles)
% hObject    handle to newsJ2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close; 
set(findobj(graphics, 'Tag', 'otslegivanie'),'enable','on'); 
load data_nash_s;
plot(Data2.J(:,1),Data2.J(:,2),'mo'); 
hold on;
numGrNEWs=3;
save data_GrNEWs numGrNEWs;
% Hint: get(hObject,'Value') returns toggle state of newsJ2


