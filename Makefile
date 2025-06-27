ACTIVATE_VENV = source .venv/bin/activate;

install-uv:
	curl -LsSf https://astral.sh/uv/install.sh | sh;
	uv venv;

install: install-uv
	git clone https://github.com/NovaSky-AI/SkyRL.git;
	cd SkyRL;
	uv venv;
	$(ACTIVATE_VENV);
	uv pip install skyrl-gym;
	cd ..;
	git clone https://github.com/AtakanTekparmak/obsidian-agent.git;
