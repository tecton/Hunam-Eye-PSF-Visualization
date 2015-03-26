function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 26-Mar-2015 10:56:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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

% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function focus_slider_Callback(hObject, eventdata, handles)
% hObject    handle to focus_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    update_data(handles);


% --- Executes during object creation, after setting all properties.
function focus_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to focus_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function r_slider_Callback(hObject, eventdata, handles)
% hObject    handle to r_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    update_data(handles);


% --- Executes during object creation, after setting all properties.
function r_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to r_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function phi_slider_Callback(hObject, eventdata, handles)
% hObject    handle to phi_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    update_data(handles);

% --- Executes during object creation, after setting all properties.
function phi_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to phi_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function theta_slider_Callback(hObject, eventdata, handles)
% hObject    handle to theta_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    update_data(handles);


% --- Executes during object creation, after setting all properties.
function theta_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to theta_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function pupil_slider_Callback(hObject, eventdata, handles)
% hObject    handle to pupil_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
    update_data(handles);


% --- Executes during object creation, after setting all properties.
function pupil_slider_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pupil_slider (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

function update_data(handles)
    focus_distance = [120, 200, 500, 800, 1000, 1600, 2000, 2500, 3000, 5000];
    object_distance = [
		[50, 120, 150, 200, 300, 500, 1000, 5000];
		[50, 100, 150, 200, 300, 500, 1000, 5000];
		[100, 250, 400, 500, 600, 800, 1000, 5000];
		[100, 250, 400, 600, 800, 1000, 1500, 5000];
		[100, 300, 600, 800, 1000, 1200, 2000, 5000];
		[200, 400, 800, 1200, 1600, 1800, 2000, 5000];
		[200, 500, 1000, 1600, 1800, 2000, 2500, 5000];
		[200, 500, 800, 1200, 2000, 2500, 3000, 5000];
		[200, 500, 900, 1400, 2000, 2500, 3000, 5000];
		[200, 500, 900, 1500, 2000, 3000, 4000, 5000]
	];
    angle_sample = [0, 5, 10, 15, 20, 25, 30, 40];
    pupil_size = [2, 3, 4, 6, 8];
    
    focus = int32(get(handles.focus_slider, 'Value'));
    set(handles.focus_value, 'String', focus_distance(focus));
    
    R = int32(get(handles.r_slider, 'Value'));
    set(handles.r_value, 'String', object_distance(focus, R));
    
    phi = int32(get(handles.phi_slider, 'Value'));
    set(handles.phi_value, 'String', angle_sample(phi));
    
    theta = int32(get(handles.theta_slider, 'Value'));
    set(handles.theta_value, 'String', angle_sample(theta));
    
    pupil = int32(get(handles.pupil_slider, 'Value'));
    set(handles.pupil_value, 'String', pupil_size(pupil));
    
    draw_intersection_points(handles);

function draw_intersection_points(handles)
    theta = get(handles.theta_value, 'String');
    phi = get(handles.phi_value, 'String');
    focus = get(handles.focus_value, 'String');
    R = get(handles.r_value, 'String');
    pupil = get(handles.pupil_value, 'String');
    filename = sprintf('..\\result\\focus-%s\\r-%s\\p-%s\\_%s.0_%s.0', focus, R, pupil, theta, phi);
    fid = fopen(strcat(filename, '.txt'), 'rt');
    offset = textscan(fid, '%f %f');
    fclose(fid);
    
    axes(handles.image);
    cla(handles.image);
    hold on;
    xlabel('x offset');
    ylabel('y offset');
    titleName = sprintf('Distribution image under Focus:%0.0f R:%0.0f ¦È:%0.0f ¦Õ:%0.0f',focus,R,theta,phi);
%     title(titleName);
    points = plot(offset{1}, offset{2},'ok','MarkerSize',3,'MarkerFaceColor','g');
    hold off;
